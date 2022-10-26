//
//  StatsManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

class HeliumStatsManager: BaseManager {
    public func stats(onSuccess: BlockchainCallbacks.Stats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = StatsRoutes.stats.endpoint()

        self.request(to: endpoint) { (r: BaseResult<StatsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func tokenSupply(format: String? = nil, onSuccess: BlockchainCallbacks.TokenSupply, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = StatsRoutes.tokenSupply.endpoint()

        self.request(to: endpoint) { (r: BaseResult<TokenSupplyResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
