//
//  AccountsManager.swift
//


import ACMNetworking
import Foundation

public class HeliumAccountsManager: BaseManager {
    public func listAccounts(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListAccounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.listAccounts.endpoint()

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: ListAccountsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func listRichestAccounts(limit: String? = nil, onSuccess: BlockchainCallbacks.ListRichestAccounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.listRichestAccounts.endpoint()

        if let limit = limit {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: limit))
        }

        network.request(to: endpoint.build()) { (r: ListRichestAccountsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func accountForAddress(address: String, onSuccess: BlockchainCallbacks.AccountForAddress, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = AccountsRoutes.accountForAddress.endpoint(address)

        network.request(to: endpoint.build()) { (r: AccountForAddressResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    /**
      The filter_modes parameter can be used to filter hotspot by how they were added to the blockchain. Supported values are full, dataonly, or light. A comma separated list (no whitespace) can be used to filter for multiple modes.
     */
    public func hotspotAccounts(address: String, cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.HotspotsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.hotspotsForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let filter_modes = filter_modes {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_modes", value: filter_modes))
        }

        network.request(to: endpoint.build()) { (r: HotspotsForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func validatorsForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.ValidatorsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.validatorsForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: ValidatorsForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func OUISForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.OUISForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.ouisForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: OUISForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    @available(*, deprecated, message: "'activityForAccount' is deprecated: The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles, described below")
    public func activityForAccount(address: String, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ActivityForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.activityForAccount.endpoint(address)

        if let filter_types = filter_types {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_types", value: filter_types))
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

        network.request(to: endpoint.build()) { (r: ActivityForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rolesForAccount(address: String, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.RolesForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rolesForAccount.endpoint(address)

        if let filter_types = filter_types {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_types", value: filter_types))
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

        network.request(to: endpoint.build()) { (r: RolesForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rolesCountsForAccount(address: String, filter_types: String? = nil, onSuccess: BlockchainCallbacks.RolesCountsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rolesCountsForAccount.endpoint(address)

        if let filter_types = filter_types {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_types", value: filter_types))
        }

        network.request(to: endpoint.build()) { (r: RolesCountsForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func electionsForAccount(address: String, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ElectionsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.electionsForAccount.endpoint(address)

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let limit = limit {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: String(format: "%d", limit)))
        }

        network.request(to: endpoint.build()) { (r: ElectionsForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func challengesForAccount(address: String, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ChallengesForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.challengesForAccount.endpoint(address)

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let limit = limit {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "limit", value: String(format: "%d", limit)))
        }

        network.request(to: endpoint.build()) { (r: ChallengesForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func pendingTransactionsForAccount(address: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.PendingTransactionsForAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.pendingTransactionsForAccount.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: PendingTransactionsForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardsForAnAccount(address: String, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsForAnAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rewardsForAnAccount.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        network.request(to: endpoint.build()) { (r: RewardsForAnAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardsInARewardsBlockForAnAccount(address: String, block: String? = nil, cursor _: String? = nil, min_time _: String? = nil, max_time _: String? = nil, onSuccess: BlockchainCallbacks.RewardsInARewardsBlockForAnAccount, onError: GenericCallbacks.ErrorCallback) {
        let route = AccountsRoutes.rewardsInARewardsBlockForAnAccount

        var endpoint = ACMEndpoint()
            .set(method: route.method.toACM)

        if let block = block {
            endpoint = endpoint
                .set(path: String(format: route.path, address, block))
        } else {
            endpoint = endpoint
                .set(path: String(format: route.path, address))
        }

        network.request(to: endpoint.build()) { (r: RewardsInARewardsBlockForAnAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardTotalsForAnAccount(address: String, min_time: String? = nil, max_time: String? = nil, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotalsForAnAccount, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AccountsRoutes.rewardTotalsForAnAccount.endpoint(address)

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let bucket = bucket {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "bucket", value: bucket))
        }

        network.request(to: endpoint.build()) { (r: RewardTotalsForAnAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func statsForAccount(address: String, onSuccess: BlockchainCallbacks.StatsForAccount, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = AccountsRoutes.statsForAccount.endpoint(address)

        network.request(to: endpoint.build()) { (r: StatsForAccountResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
