//
//  BlocksManager.swift
//  
//
//  Created by Burak Colak on 18.10.2022.
//

import UIKit

public class BlocksManager: BaseManager {
    public func blocksHeight(max_time: String? = nil, onSuccess: BlockchainCallbacks.BlocksHeight, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blocksHeight.endpoint()

        if let max_time = max_time {
            endpoint.queryItems = [URLQueryItem(name: "max_time", value: max_time)]
        }

        self.request(to: endpoint) { (r: BaseResult<BlocksHeightResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func blocksStats(onSuccess: BlockchainCallbacks.BlocksStats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = BlocksRoutes.blocksStats.endpoint()

        self.request(to: endpoint) { (r: BaseResult<BlocksStatsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func blocksDescription(cursor: String? = nil, onSuccess: BlockchainCallbacks.BlocksDescription, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blocksDescription.endpoint()

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<BlocksDescriptionResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func blockAtHeight(height: String, onSuccess: BlockchainCallbacks.BlockAtHeight, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = BlocksRoutes.blockAtHeight.endpoint(height)

        self.request(to: endpoint) { (r: BaseResult<BlockAtHeightResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func blockAtHeightTransactions(height: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.BlockAtHeightTransactions, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blockAtHeightTransactions.endpoint(height)

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<BlockAtHeightTransactionsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func blockAtHash(hash: String, onSuccess: BlockchainCallbacks.BlockAtHash, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = BlocksRoutes.blockAtHash.endpoint(hash)

        self.request(to: endpoint) { (r: BaseResult<BlockAtHashResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func blockAtHashTransactions(hash: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.BlockAtHashTransactions, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = BlocksRoutes.blockAtHashTransactions.endpoint(hash)

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<BlockAtHashTransactionsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
