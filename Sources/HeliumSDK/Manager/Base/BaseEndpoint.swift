//
//  BaseEndpoint.swift
//


import Foundation

struct BaseEndpoint {
    // MARK: This is the main switch for base url of blockchain and console, change CONSOLE to use console endpoints

    var provider: BaseProvider = .BLOCKCHAIN

    enum Scheme: String {
        case http, https
    }

    // MARK: API host, Default https

    var scheme: Scheme = .https

    // MARK: Base Url of the API

    var host: String {
        switch provider {
        case .BLOCKCHAIN:
            return Constants.BLOCKHAIN_ENVIRONMENT.rawValue
        case .CONSOLE:
            return Constants.CONSOLE_ENVIRONMENT.rawValue
        }
    }

    // MARK: The path for api access

    var path = ""

    // MARK: Url Parameters

    var queryItems: [URLQueryItem]?

    // MARK: Request parameters

    var params: [String: Any?]?

    // MARK: Headers

    var headers: NSMutableDictionary? {
        let list = NSMutableDictionary()

        if provider == .CONSOLE {
            list.setValue(Constants.API_KEY, forKey: "key")
        }

        return list
    }

    // MARK: Default method: GET

    var method: BaseMethod = .get

    // MARK: Generated URL for making request

    var url: URL? {
        var components = URLComponents()
        components.scheme = scheme.rawValue
        components.host = host
        components.path = updatedPath
        components.queryItems = queryItems
        return components.url
    }

    // TODO: Auth header is ready for making authorization
    var authHeader: String? {
        return nil
    }

    // MARK: Generated url request

    var urlRequest: URLRequest? {
        guard let url = url else {
            BaseLogger.error("Error: URL couldn't create")
            return nil
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue

        if let header = authHeader {
            urlRequest.setValue(header, forHTTPHeaderField: "Authorization")
        }

        if let basicHeaders = headers {
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

    init(path: String, method: BaseMethod = .get, queryItems: [URLQueryItem]? = nil, params: [String: Any?]? = nil, provider: BaseProvider = .BLOCKCHAIN) {
        self.path = path
        self.method = method
        self.queryItems = queryItems
        self.params = params
        self.provider = provider
    }
}

private extension BaseEndpoint {
    var updatedPath: String {
        if path.starts(with: "/") {
            return path
        } else {
            return String(format: "/%@", path)
        }
    }
}
