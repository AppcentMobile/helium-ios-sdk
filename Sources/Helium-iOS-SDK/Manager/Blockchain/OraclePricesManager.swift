//
//  OraclePricesManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import Foundation

class HeliumOraclePricesManager: BaseManager {
    public func currentOraclePrice(onSuccess: BlockchainCallbacks.CurrentOraclePrice, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.currentOraclePrice.endpoint()

        self.request(to: endpoint) { (r: BaseResult<CurrentOraclePriceResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func currentAndHistoricalOraclePrices(max_block: Int? = nil, cursor: String? = nil, onSuccess: BlockchainCallbacks.CurrentAndHistoricalOraclePrices, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.currentAndHistoricalOraclePrices.endpoint()

        var queryItems = [URLQueryItem]()

        if let max_block = max_block {
            queryItems.append(URLQueryItem(name: "max_block", value: String(format: "%d", max_block)))
        }

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<CurrentAndHistoricalOraclePricesResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func oraclePriceStats(min_time: String, max_time: String, onSuccess: BlockchainCallbacks.OraclePriceStats, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.oraclePriceStats.endpoint()

        endpoint.queryItems = [
            URLQueryItem(name: "min_time", value: min_time),
            URLQueryItem(name: "max_time", value: max_time)
        ]

        self.request(to: endpoint) { (r: BaseResult<OraclePriceStatsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func oraclePriceAtASpecificBlock(block: String, onSuccess: BlockchainCallbacks.OraclePriceAtASpecificBlock, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.oraclePriceAtASpecificBlock.endpoint(block)

        self.request(to: endpoint) { (r: BaseResult<OraclePriceAtASpecificBlockResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func listOracleActivity(cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: String? = nil, onSuccess: BlockchainCallbacks.ListOracleActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.listOracleActivity.endpoint()

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

        self.request(to: endpoint) { (r: BaseResult<ListOracleActivityResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func listActivityForASpecificOracle(address: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: String? = nil, onSuccess: BlockchainCallbacks.ListActivityForASpecificOracle, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.listActivityForASpecificOracle.endpoint(address)

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

        self.request(to: endpoint) { (r: BaseResult<ListActivityForASpecificOracleResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func getPredictedHNTOraclePrices(location: String, onSuccess: BlockchainCallbacks.GetPredictedHNTOraclePrices, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.getPredictedHNTOraclePrices.endpoint()

        self.request(to: endpoint) { (r: BaseResult<GetPredictedHNTOraclePricesResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
