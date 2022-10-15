//
//  BaseManager.swift
//  
//
//  Created by Burak Colak on 15.10.2022.
//

import UIKit

class BaseManager {

    private var session: URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 120
        configuration.timeoutIntervalForResource = 120

        return URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
    }

    func request<T: Decodable>(to endpoint: BaseEndpoint, completion: @escaping (BaseResult<T, Error>) -> ()) {

    }

}
