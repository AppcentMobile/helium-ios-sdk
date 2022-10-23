//
//  AccountsManager.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public final class HeliumBlockChainAccountsManager: BaseManager {
    public func listAccounts(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListAccounts, onError: GenericCallbacks.ErrorCallback) {
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

    public func listRichestAccounts(limit: String? = nil, onSuccess: BlockchainCallbacks.ListRichestAccounts, onError: GenericCallbacks.ErrorCallback) {
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

    public func accountForAddress(address: String, onSuccess: BlockchainCallbacks.AccountForAddress, onError: GenericCallbacks.ErrorCallback) {
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
    public func hotspotAccounts(address: String, cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.HotspotsForAccount, onError: GenericCallbacks.ErrorCallback) {
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

    public func validatorsForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.ValidatorsForAccount, onError: GenericCallbacks.ErrorCallback) {
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

    public func OUISForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.OUISForAccount, onError: GenericCallbacks.ErrorCallback) {
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

    @available(*, deprecated, message: "'activityForAccount' is deprecated: The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles, described below")
    public func activityForAccount(address: String, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ActivityForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.activityForAccount.endpoint(address)

        var queryItems = [URLQueryItem]()

        if let filter_types = filter_types {
            queryItems.append(URLQueryItem(name: "filter_types", value: filter_types))
        }

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

        self.request(to: endpoint) { (r: BaseResult<ActivityForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func rolesForAccount(address: String, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.RolesForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rolesForAccount.endpoint(address)

        var queryItems = [URLQueryItem]()

        if let filter_types = filter_types {
            queryItems.append(URLQueryItem(name: "filter_types", value: filter_types))
        }

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

        self.request(to: endpoint) { (r: BaseResult<RolesForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func rolesCountsForAccount(address: String, filter_types: String? = nil, onSuccess: BlockchainCallbacks.RolesCountsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rolesCountsForAccount.endpoint(address)

        if let filter_types = filter_types {
            endpoint.queryItems = [URLQueryItem(name: "filter_types", value: filter_types)]
        }

        self.request(to: endpoint) { (r: BaseResult<RolesCountsForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func electionsForAccount(address: String, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ElectionsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.electionsForAccount.endpoint(address)

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

        self.request(to: endpoint) { (r: BaseResult<ElectionsForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func challengesForAccount(address: String, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ChallengesForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.challengesForAccount.endpoint(address)

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

        self.request(to: endpoint) { (r: BaseResult<ChallengesForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func pendingTransactionsForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.PendingTransactionsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.pendingTransactionsForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        self.request(to: endpoint) { (r: BaseResult<PendingTransactionsForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func rewardsForAnAccount(address: String, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsForAnAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rewardsForAnAccount.endpoint(address)

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

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<RewardsForAnAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func rewardsInARewardsBlockForAnAccount(address: String, block: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsInARewardsBlockForAnAccount, onError: GenericCallbacks.ErrorCallback) {
        let route = AccountsRoutes.rewardsInARewardsBlockForAnAccount

        var endpoint = BaseEndpoint(path: String(format: route.path, address), method: route.method)
        if let block = block {
            endpoint = BaseEndpoint(path: String(format: route.path, address, block), method: route.method)
        }

        self.request(to: endpoint) { (r: BaseResult<RewardsInARewardsBlockForAnAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func rewardTotalsForAnAccount(address: String, min_time: String? = nil, max_time: String? = nil, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotalsForAnAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rewardTotalsForAnAccount.endpoint(address)

        var queryItems = [URLQueryItem]()

        if let min_time = min_time {
            queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            queryItems.append(URLQueryItem(name: "max_time", value: max_time))
        }

        if let bucket = bucket {
            queryItems.append(URLQueryItem(name: "bucket", value: bucket))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<RewardTotalsForAnAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func statsForAccount(address: String, onSuccess: BlockchainCallbacks.StatsForAccount, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = AccountsRoutes.statsForAccount.endpoint(address)

        self.request(to: endpoint) { (r: BaseResult<StatsForAccountResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
