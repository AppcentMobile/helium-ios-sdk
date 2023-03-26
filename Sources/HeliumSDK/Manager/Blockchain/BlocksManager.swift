//
//  BlocksManager.swift
//

import ACMNetworking
import Foundation

public class HeliumBlocksManager: BaseBlockChainManager {
    public func blocksHeight(max_time: String? = nil, onSuccess: BlockchainCallbacks.BlocksHeight, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blocksHeight.endpoint()

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        network.request(to: endpoint.build()) { (r: BlocksHeightResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func blocksStats(onSuccess: BlockchainCallbacks.BlocksStats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = BlocksRoutes.blocksStats.endpoint()

        network.request(to: endpoint.build()) { (r: BlocksStatsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func blocksDescription(cursor: String? = nil, onSuccess: BlockchainCallbacks.BlocksDescription, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blocksDescription.endpoint()

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: BlocksDescriptionResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func blockAtHeight(height: String, onSuccess: BlockchainCallbacks.BlockAtHeight, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = BlocksRoutes.blockAtHeight.endpoint(height)

        network.request(to: endpoint.build()) { (r: BlockAtHeightResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func blockAtHeightTransactions(height: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.BlockAtHeightTransactions, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blockAtHeightTransactions.endpoint(height)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: BlockAtHeightTransactionsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func blockAtHash(hash: String, onSuccess: BlockchainCallbacks.BlockAtHash, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = BlocksRoutes.blockAtHash.endpoint(hash)

        network.request(to: endpoint.build()) { (r: BlockAtHashResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func blockAtHashTransactions(hash: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.BlockAtHashTransactions, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blockAtHashTransactions.endpoint(hash)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: BlockAtHashTransactionsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
