//
//  StateChannelsManager.swift
//

import ACMNetworking

class HeliumStateChannelsManager: BaseManager {
    public func stateChannelCloses(cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.StateChannelsCloses, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = StateChannelsRoutes.stateChannelCloses.endpoint()

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
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: String(format: "%d", limit)))
        }

        network.request(to: endpoint.build()) { (r: StateChannelClosesResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
