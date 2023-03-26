//
//  StatsManager.swift
//

import ACMNetworking

class HeliumStatsManager: BaseBlockChainManager {
    public func stats(onSuccess: BlockchainCallbacks.Stats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = StatsRoutes.stats.endpoint()

        network.request(to: endpoint.build()) { (r: StatsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func tokenSupply(format _: String? = nil, onSuccess: BlockchainCallbacks.TokenSupply, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = StatsRoutes.tokenSupply.endpoint()

        network.request(to: endpoint.build()) { (r: TokenSupplyResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
