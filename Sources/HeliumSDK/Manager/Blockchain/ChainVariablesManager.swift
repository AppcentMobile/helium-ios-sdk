//
//  ChainVariablesManager.swift
//

import ACMNetworking
import Foundation

public class HeliumChainVariablesManager: BaseBlockChainManager {
    public func getChainVariables(min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.BlocksHeight, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ChainVariablesRoutes.getChainVariables.endpoint()

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let limit = limit {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: String(format: "%d", limit)))
        }

        network.request(to: endpoint.build()) { (r: BlocksHeightResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func getTheValueOfAchainVariable(name: String, onSuccess: BlockchainCallbacks.GetTheValueOfAchainVariable, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ChainVariablesRoutes.getTheValueOfAChainVariable.endpoint(name)

        network.request(to: endpoint.build()) { (r: GetTheValueOfAchainVariableResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func listChainVariableActivity(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListChainVariableActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ChainVariablesRoutes.listChainVariableActivity.endpoint()

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: ListChainVariableActivityResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
