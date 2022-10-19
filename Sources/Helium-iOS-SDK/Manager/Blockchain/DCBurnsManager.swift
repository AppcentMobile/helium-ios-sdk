//
//  DCBurnsManager.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

import UIKit

public class DCBurnsManager: BaseManager {
    public func dCBurnTotals(min_time: String? = nil, max_time: String? = nil, bucket: String? = nil, onSuccess: BlockchainCallbacks.DCBurnTotals, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = DCBurnsRoutes.dCBurnTotals.endpoint()

        var queryItems = [URLQueryItem]()

        if let min_time = min_time {
            queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            queryItems.append(URLQueryItem(name: "max_time", value: max_time))
        }

        if let bucket = bucket {
            queryItems.append(URLQueryItem(name: "bucket", value: bucket))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<DCBurnTotalsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func dCBurnStats(onSuccess: BlockchainCallbacks.DCBurnStats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = DCBurnsRoutes.dCBurnStats.endpoint()

        self.request(to: endpoint) { (r: BaseResult<DCBurnStatsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func dCBurnEvents(cursor: String? = nil, onSuccess: BlockchainCallbacks.DCBurnEvents, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = DCBurnsRoutes.dCBurnEvents.endpoint()

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<DCBurnEventsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
