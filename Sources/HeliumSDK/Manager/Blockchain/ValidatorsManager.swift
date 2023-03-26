//
//  ValidatorsManager.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

import Foundation

class HeliumValidatorsManager: BaseManager {
    public func listValidators(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListValidators, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.listValidators.endpoint()

        if let cursor = cursor {
            endpoint.queryItems = [URLQueryItem(name: "cursor", value: cursor)]
        }

        request(to: endpoint) { (r: BaseResult<ListValidatorsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func validatorForAddress(address: String, onSuccess: BlockchainCallbacks.ValidatorForAddress, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.validatorForAddress.endpoint(address)

        request(to: endpoint) { (r: BaseResult<ValidatorForAddressResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func validatorsForName(name: String, onSuccess: BlockchainCallbacks.ValidatorsForName, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.validatorsForName.endpoint(name)

        request(to: endpoint) { (r: BaseResult<ValidatorsForNameResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func validatorNameSearch(search: String, onSuccess: BlockchainCallbacks.ValidatorNameSearch, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.validatorNameSearch.endpoint()

        endpoint.queryItems = [URLQueryItem(name: "search", value: search)]

        request(to: endpoint) { (r: BaseResult<ValidatorNameSearchResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    public func validatorActivity(address: String, cursor: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ValidatorActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.validatorActivity.endpoint(address)

        var queryItems = [URLQueryItem]()

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

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

        request(to: endpoint) { (r: BaseResult<ValidatorActivityResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func validatorRoles(address: String, cursor: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ValidatorRoles, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.validatorRoles.endpoint(address)

        var queryItems = [URLQueryItem]()

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

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

        request(to: endpoint) { (r: BaseResult<ValidatorRolesResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func validatorRolesCounts(address: String, filter_types: String, onSuccess: BlockchainCallbacks.ValidatorRolesCounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.validatorRolesCounts.endpoint(address)

        endpoint.queryItems = [URLQueryItem(name: "filter_types", value: filter_types)]

        request(to: endpoint) { (r: BaseResult<ValidatorRolesCountsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func statsForValidators(onSuccess: BlockchainCallbacks.StatsForValidators, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.statsForValidators.endpoint()

        request(to: endpoint) { (r: BaseResult<StatsForValidatorsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func currentlyElectedValidators(onSuccess: BlockchainCallbacks.CurrentlyElectedValidators, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.currentlyElectedValidators.endpoint()

        request(to: endpoint) { (r: BaseResult<CurrentlyElectedValidatorsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func electedValidatorsAtABlock(height: String, onSuccess: BlockchainCallbacks.ElectedValidatorsAtABlock, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.electedValidatorsAtABlock.endpoint(height)

        request(to: endpoint) { (r: BaseResult<ElectedValidatorsAtABlockResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func electedValidatorsInAnElection(hash: String, onSuccess: BlockchainCallbacks.ElectedValidatorsInAnElection, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.electedValidatorsInAnElection.endpoint(hash)

        request(to: endpoint) { (r: BaseResult<ElectedValidatorsInAnElectionResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func rewardsForAValidator(address: String, min_time: String, max_time: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.RewardsForAValidator, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.rewardsForAValidator.endpoint(address)

        var queryItems = [URLQueryItem]()
        queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        queryItems.append(URLQueryItem(name: "max_time", value: max_time))

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        request(to: endpoint) { (r: BaseResult<RewardsForAValidatorResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func rewardTotalForAValidator(address: String, min_time: String, max_time: String, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotalForAValidator, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.rewardTotalForAValidator.endpoint(address)

        var queryItems = [URLQueryItem]()
        queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        queryItems.append(URLQueryItem(name: "max_time", value: max_time))

        if let bucket = bucket {
            queryItems.append(URLQueryItem(name: "bucket", value: bucket))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        request(to: endpoint) { (r: BaseResult<RewardTotalForAValidatorResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func rewardTotalForAllValidators(address: String, min_time: String, max_time: String, onSuccess: BlockchainCallbacks.RewardTotalForAllValidators, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.rewardTotalForAllValidators.endpoint(address)

        var queryItems = [URLQueryItem]()
        queryItems.append(URLQueryItem(name: "min_time", value: min_time))
        queryItems.append(URLQueryItem(name: "max_time", value: max_time))

        endpoint.queryItems = queryItems

        request(to: endpoint) { (r: BaseResult<RewardTotalForAllValidatorsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
