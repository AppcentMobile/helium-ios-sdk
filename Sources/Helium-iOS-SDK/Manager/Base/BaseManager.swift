//
//  BaseManager.swift
//  
//
//  Created by Burak Colak on 15.10.2022.
//

import UIKit

public class BaseManager {

    open var errorMessage = "An error occurred."
    open var responseInfoMessage = "RESPONSE:"
    open var responseNullMessage = "Response null"
    open var dataNullMessage = "Data null"
    open var dataParseSuccessMessage = "Data parsed successfully"
    open var dataParseErrorMessage = "Data parsing error : %@"
    open var urlRequestErrorMessage = "URL Request Error"
    open var httpURLMessage = "HTTP URL:"
    open var httpAuthHeadersMessage = "HTTP AUTH HEADERS:"
    open var httpHeadersMessage = "HTTP HEADERS:"
    open var httpQueryItemsMessage = "HTTP QUERYITEMS:"
    open var httpBodyMessage = "HTTP BODY:"

    private var session: URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = Constants.TIMEOUT
        configuration.timeoutIntervalForResource = Constants.TIMEOUT

        return URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
    }

    func request<T: Decodable>(to endpoint: BaseEndpoint, completion: @escaping (BaseResult<T, Error>) -> ()) {
        guard let urlRequest = endpoint.urlRequest else {
            BaseLogger.error(urlRequestErrorMessage)
            return
        }

        if let data = endpoint.url {
            BaseLogger.info(self.httpURLMessage + "\(data)")
        }

        if let authHeader = endpoint.authHeader, authHeader.count > 0 {
            BaseLogger.info(self.httpAuthHeadersMessage + "\(authHeader)")
        }

        if let data = endpoint.headers {
            BaseLogger.info(self.httpHeadersMessage + "\(data)")
        }

        if let data = endpoint.queryItems {
            BaseLogger.info(self.httpQueryItemsMessage + "\(data)")
        }

        if let data = urlRequest.httpBody {
            BaseLogger.info(self.httpBodyMessage + String(decoding: data, as: UTF8.self))
        }

        let dataTask = session.dataTask(with: urlRequest) { [weak self] data, response, error in
            guard error == nil else {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: error?.localizedDescription, endpoint: endpoint)))
                return
            }
            guard response != nil else {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: self?.responseNullMessage, endpoint: endpoint)))
                return
            }
            guard let data = data else {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: self?.dataNullMessage, endpoint: endpoint)))
                return
            }

            if error?.isConnectivityError ?? false {
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: self?.dataNullMessage, endpoint: endpoint)))
                return
            }

            BaseLogger.info(self?.responseInfoMessage ?? "" + String(decoding: data, as: UTF8.self))

            do {
                let responseObject = try JSONDecoder().decode(T.self, from: data)
                BaseLogger.warning(self?.dataParseSuccessMessage)
                completion(.success(responseObject))
            } catch let e {
                let errorMessage = String(format: self?.dataParseErrorMessage ?? "", e.localizedDescription)
                BaseLogger.warning(errorMessage)
                completion(.failure(BaseNetworkError(message: self?.errorMessage, log: errorMessage, endpoint: endpoint)))
            }
        }
        dataTask.resume()
    }

}
