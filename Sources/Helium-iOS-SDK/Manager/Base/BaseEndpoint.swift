//
//  BaseEndpoint.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

struct BaseEndpoint {
    var provider: BaseProvider?

    enum Scheme: String {
        case http = "http", https = "https"
    }

    /// API host, Default https
    var scheme: Scheme = .https

    /// Base Url of the API
    var host: String {
        switch provider {
        case .BLOCKCHAIN:
            return Constants.BLOCKHAIN_ENVIRONMENT.rawValue
        case .CONSOLE:
            return Constants.CONSOLE_ENVIRONMENT.rawValue
        case .none:
            return ""
        }
    }

    var path = ""

    /// Url Parameters
    var queryItems: [URLQueryItem]?

    var params: [String: Any?]?

    var headers: NSMutableDictionary? {
        let list = NSMutableDictionary()

        return list
    }

    /// Default GET
    var method: BaseMethod = .get

    var url: URL? {
        get {
            var components = URLComponents()
            if path.contains("https") || path.contains("http") {
                let url = URL(string: path)
                components.scheme = url?.scheme
                components.host = url?.host
                components.path = url!.path
                components.queryItems = queryItems
            } else {
                components.scheme = scheme.rawValue
                components.host = self.host
                components.path = path
                components.queryItems = queryItems
            }
            return components.url
        }
    }

    /// TODO: Auth header is ready for making authorization
    var authHeader: String? {
        return nil
    }

    var urlRequest: URLRequest? {
        get {
            guard let url = url else {
                BaseLogger.error("Error: URL couldn't create")
                return nil
            }

            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = method.rawValue

            if let header = self.authHeader {
                urlRequest.setValue(header, forHTTPHeaderField: "Authorization")
            }

            if let basicHeaders = self.headers {
                for header in basicHeaders {
                    if let key = header.key as? String, let value = header.value as? String {
                        urlRequest.setValue(value, forHTTPHeaderField: key)
                    }
                }
            }

            if method != .get, let params = params {
                let httpBody = try? JSONSerialization.data(withJSONObject: params)
                urlRequest.httpBody = httpBody
                urlRequest.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
            }

            return urlRequest
        }
    }

    init(path: String, method: BaseMethod = .get, queryItems: [URLQueryItem]? = nil, params: [String: Any?]? = nil, provider: BaseProvider? = .none) {
        self.path = path
        self.method = method
        self.queryItems = queryItems
        self.params = params
        self.provider = provider
    }
}
