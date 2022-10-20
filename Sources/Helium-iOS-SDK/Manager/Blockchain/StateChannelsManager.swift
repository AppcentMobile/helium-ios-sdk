//
//  StateChannelsManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

class StateChannelsManager: BaseManager {
    public func stateChannelCloses(cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.StateChannelsCloses, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = StateChannelsRoutes.stateChannelCloses.endpoint()

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
            queryItems.append(URLQueryItem(name: "limit", value: String(format: "%d", limit)))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<StateChannelClosesResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
