//
//  ElectionsManager.swift
//
//
//  Created by Burak Colak on 19.10.2022.
//

import Foundation

class HeliumElectionsManager: BaseManager {
    public func listElections(cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: String? = nil, onSuccess: BlockchainCallbacks.ListElections, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ElectionsRoutes.listElections.endpoint()

        var queryItems = [URLQueryItem]()

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        if let min_time = min_time {
            queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            queryItems.append(URLQueryItem(name: "max_time", value: max_time))
        }

        if let limit = limit {
            queryItems.append(URLQueryItem(name: "limit", value: limit))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        request(to: endpoint) { (r: BaseResult<ListElectionsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
