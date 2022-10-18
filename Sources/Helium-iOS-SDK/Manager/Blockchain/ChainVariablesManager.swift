//
//  ChainVariablesManager.swift
//  
//
//  Created by Burak Colak on 18.10.2022.
//

import UIKit

public class ChainVariablesManager: BaseManager {
    private override init() {}

    public static let shared = ChainVariablesManager()
}

public extension ChainVariablesManager {
    func getChainVariables(min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.BlocksHeight, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ChainVariablesRoutes.getChainVariables.endpoint()

        var queryItems = [URLQueryItem]()

        if let min_time = min_time {
            queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            queryItems.append(URLQueryItem(name: "max_time", value: max_time))
        }

        if let limit = limit {
            queryItems.append(URLQueryItem(name: "limit", value: String(format: "%d", limit)))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
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

    func getTheValueOfAchainVariable(name: String, onSuccess: BlockchainCallbacks.GetTheValueOfAchainVariable, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ChainVariablesRoutes.getTheValueOfAChainVariable.endpoint(name)

        self.request(to: endpoint) { (r: BaseResult<GetTheValueOfAchainVariableResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    func listChainVariableActivity(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListChainVariableActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ChainVariablesRoutes.listChainVariableActivity.endpoint()

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<ListChainVariableActivityResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
