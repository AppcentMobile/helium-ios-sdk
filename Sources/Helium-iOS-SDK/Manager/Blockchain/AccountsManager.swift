//
//  AccountsManager.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public class HeliumBlockChainAccountsManager: BaseManager {

    private override init() {}

    public static let shared = HeliumBlockChainAccountsManager()

}

public extension HeliumBlockChainAccountsManager {
    func listAccounts(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListAccountsCallback, onError: GenericCallbacks.ErrorCallback) {
        let route = AccountsRoutes.listAccounts
        var endpoint = BaseEndpoint(
            path: route.path,
            method: route.method
        )

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<ListAccountsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    func listRichestAccounts(limit: String? = nil, onSuccess: BlockchainCallbacks.ListAccountsCallback, onError: GenericCallbacks.ErrorCallback) {
        let route = AccountsRoutes.listRichestAccounts
        var endpoint = BaseEndpoint(
            path: route.path,
            method: route.method
        )

        if let limit = limit {
            endpoint.queryItems = [URLQueryItem(name: "limit", value: limit)]
        }

        self.request(to: endpoint) { (r: BaseResult<ListAccountsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
