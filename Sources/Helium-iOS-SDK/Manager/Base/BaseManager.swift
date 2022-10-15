//
//  BaseManager.swift
//  
//
//  Created by Burak Colak on 15.10.2022.
//

import UIKit

class BaseManager {

    private final let errorMessage = "An error occurred."

    private var session: URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 120
        configuration.timeoutIntervalForResource = 120

        return URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
    }

    func request<T: Decodable>(to endpoint: BaseEndpoint, completion: @escaping (BaseResult<T, Error>) -> ()) {
        guard let urlRequest = endpoint.urlRequest else {
            BaseLogger.error("URL Request Error")
            return
        }

        if let data = endpoint.url {
            BaseLogger.info("HTTP URL:\(data)")
        }

        if let authHeader = endpoint.authHeader, authHeader.count > 0 {
            BaseLogger.info("HTTP AUTH HEADERS:\(authHeader)")
        }

        if let data = endpoint.headers {
            BaseLogger.info("HTTP HEADERS:\(data)")
        }

        if let data = endpoint.queryItems {
            BaseLogger.info("HTTP QUERYITEMS:\(data)")
        }

        if let data = urlRequest.httpBody {
            BaseLogger.info("HTTP BODY:" + String(decoding: data, as: UTF8.self))
        }

        let dataTask = session.dataTask(with: urlRequest) { [weak self] data, response, error in
            guard error == nil else {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: error?.localizedDescription, endpoint: endpoint)))
                return
            }
            guard response != nil else {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: "Response null", endpoint: endpoint)))
                return
            }
            guard let data = data else {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: "Data null", endpoint: endpoint)))
                return
            }

            if error?.isConnectivityError ?? false {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: "Data null", endpoint: endpoint)))
                return
            }

            BaseLogger.info("RESPONSE:" + String(decoding: data, as: UTF8.self))

            do {
                let responseObject = try JSONDecoder().decode(T.self, from: data)
                completion(.success(responseObject))
            } catch let e {
                BaseLogger.warning("Data error : \(e)")
                BaseLogger.warning("Data parsing error : \(e.localizedDescription)")
                completion(.failure(BaseNetworkError(message: "Bir hata oluştu", log: "JSON Decoder Error: \(e)", endpoint: endpoint)))
            }
        }
        dataTask.resume()
    }

}
