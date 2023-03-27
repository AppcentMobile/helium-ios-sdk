//
//  DCBurnsManager.swift
//

import ACMNetworking
import Foundation

public class HeliumDCBurnsManager: BaseBlockChainManager {
    public func dCBurnTotals(min_time: String? = nil, max_time: String? = nil, bucket: String? = nil, onSuccess: BlockchainCallbacks.DCBurnTotals, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = DCBurnsRoutes.dCBurnTotals.endpoint(with: acmEndpoint)

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let bucket = bucket {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "bucket", value: bucket))
        }

        network.request(to: endpoint.build()) { (r: DCBurnTotalsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func dCBurnStats(onSuccess: BlockchainCallbacks.DCBurnStats, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = DCBurnsRoutes.dCBurnStats.endpoint(with: acmEndpoint)

        network.request(to: endpoint.build()) { (r: DCBurnStatsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func dCBurnEvents(cursor: String? = nil, onSuccess: BlockchainCallbacks.DCBurnEvents, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = DCBurnsRoutes.dCBurnEvents.endpoint(with: acmEndpoint)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: DCBurnEventsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
