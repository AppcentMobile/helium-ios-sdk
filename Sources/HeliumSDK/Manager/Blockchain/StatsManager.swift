//
//  StatsManager.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

class HeliumStatsManager: BaseManager {
    public func stats(onSuccess: BlockchainCallbacks.Stats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = StatsRoutes.stats.endpoint()

        request(to: endpoint) { (r: BaseResult<StatsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func tokenSupply(format _: String? = nil, onSuccess: BlockchainCallbacks.TokenSupply, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = StatsRoutes.tokenSupply.endpoint()

        request(to: endpoint) { (r: BaseResult<TokenSupplyResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
