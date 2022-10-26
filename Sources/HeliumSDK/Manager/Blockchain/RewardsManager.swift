//
//  RewardsManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import Foundation

class HeliumRewardsManager: BaseManager {
    public func rewardTotals(min_time: String, max_time: String, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotals, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = RewardsRoutes.rewardTotals.endpoint()

        var queryItems = [URLQueryItem]()

        queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        queryItems.append(URLQueryItem(name: "max_time", value: max_time))

        if let bucket = bucket {
            queryItems.append(URLQueryItem(name: "bucket", value: bucket))
        }

        endpoint.queryItems = queryItems

        self.request(to: endpoint) { (r: BaseResult<RewardTotalsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
