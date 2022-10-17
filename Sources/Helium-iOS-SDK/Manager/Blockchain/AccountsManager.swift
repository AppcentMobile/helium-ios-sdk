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
    func listAccounts(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListAccounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.listAccounts.endpoint()

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

    func listRichestAccounts(limit: String? = nil, onSuccess: BlockchainCallbacks.ListRichestAccounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.listRichestAccounts.endpoint()

        if let limit = limit {
            endpoint.queryItems = [URLQueryItem(name: "limit", value: limit)]
        }

        self.request(to: endpoint) { (r: BaseResult<ListRichestAccountsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    func accountForAddress(address: String, onSuccess: BlockchainCallbacks.AccountForAddress, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = AccountsRoutes.accountForAddress.endpoint(address)

        self.request(to: endpoint) { (r: BaseResult<AccountForAddressResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    /**
     The filter_modes parameter can be used to filter hotspot by how they were added to the blockchain. Supported values are full, dataonly, or light. A comma separated list (no whitespace) can be used to filter for multiple modes.
    */
    func hotspotAccounts(address: String, cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.HotspotsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.hotspotsForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        if let filter_modes = filter_modes {
            endpoint.queryItems = [URLQueryItem(name: "filter_modes", value: filter_modes)]
        }

        self.request(to: endpoint) { (r: BaseResult<HotspotsForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    func validatorsForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.ValidatorsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.validatorsForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<ValidatorsForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    func OUISForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.OUISForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.ouisForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<OUISForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
