//
//  OraclePricesManager.swift
//

import ACMNetworking
import Foundation

class HeliumOraclePricesManager: BaseBlockChainManager {
    public func currentOraclePrice(onSuccess: BlockchainCallbacks.CurrentOraclePrice, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.currentOraclePrice.endpoint(with: acmEndpoint)

        network.request(to: endpoint.build()) { (r: CurrentOraclePriceResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func currentAndHistoricalOraclePrices(max_block: Int? = nil, cursor: String? = nil, onSuccess: BlockchainCallbacks.CurrentAndHistoricalOraclePrices, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.currentAndHistoricalOraclePrices.endpoint(with: acmEndpoint)

        if let max_block = max_block {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_block", value: String(format: "%d", max_block)))
        }

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: CurrentAndHistoricalOraclePricesResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func oraclePriceStats(min_time: String, max_time: String, onSuccess: BlockchainCallbacks.OraclePriceStats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.oraclePriceStats.endpoint(with: acmEndpoint)
            .add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
            .add(queryItem: ACMQueryModel(name: "max_time", value: max_time))

        network.request(to: endpoint.build()) { (r: OraclePriceStatsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func oraclePriceAtASpecificBlock(block: String, onSuccess: BlockchainCallbacks.OraclePriceAtASpecificBlock, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.oraclePriceAtASpecificBlock.endpoint(with: acmEndpoint, value: block)

        network.request(to: endpoint.build()) { (r: OraclePriceAtASpecificBlockResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func listOracleActivity(cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: String? = nil, onSuccess: BlockchainCallbacks.ListOracleActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.listOracleActivity.endpoint(with: acmEndpoint)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let limit = limit {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: limit))
        }

        network.request(to: endpoint.build()) { (r: ListOracleActivityResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func listActivityForASpecificOracle(address: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: String? = nil, onSuccess: BlockchainCallbacks.ListActivityForASpecificOracle, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OraclePricesRoutes.listActivityForASpecificOracle.endpoint(with: acmEndpoint, value: address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let limit = limit {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: limit))
        }

        network.request(to: endpoint.build()) { (r: ListActivityForASpecificOracleResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func getPredictedHNTOraclePrices(location _: String, onSuccess: BlockchainCallbacks.GetPredictedHNTOraclePrices, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OraclePricesRoutes.getPredictedHNTOraclePrices.endpoint(with: acmEndpoint)

        network.request(to: endpoint.build()) { (r: GetPredictedHNTOraclePricesResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
