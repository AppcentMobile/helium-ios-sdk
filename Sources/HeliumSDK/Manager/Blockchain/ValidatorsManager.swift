//
//  ValidatorsManager.swift
//


import ACMNetworking

class HeliumValidatorsManager: BaseManager {
    public func listValidators(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListValidators, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.listValidators.endpoint()

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: ListValidatorsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func validatorForAddress(address: String, onSuccess: BlockchainCallbacks.ValidatorForAddress, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.validatorForAddress.endpoint(address)

        network.request(to: endpoint.build()) { (r: ValidatorForAddressResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func validatorsForName(name: String, onSuccess: BlockchainCallbacks.ValidatorsForName, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.validatorsForName.endpoint(name)

        network.request(to: endpoint.build()) { (r: ValidatorsForNameResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func validatorNameSearch(search: String, onSuccess: BlockchainCallbacks.ValidatorNameSearch, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.validatorNameSearch.endpoint()
            .add(queryItem: ACMQueryModel(name: "search", value: search))

        network.request(to: endpoint.build()) { (r: ValidatorNameSearchResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    public func validatorActivity(address: String, cursor: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ValidatorActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.validatorActivity.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

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

        network.request(to: endpoint.build()) { (r: ValidatorActivityResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func validatorRoles(address: String, cursor: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ValidatorRoles, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.validatorRoles.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

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

        network.request(to: endpoint.build()) { (r: ValidatorRolesResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func validatorRolesCounts(address: String, filter_types: String, onSuccess: BlockchainCallbacks.ValidatorRolesCounts, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.validatorRolesCounts.endpoint(address)
            .add(queryItem: ACMQueryModel(name: "filter_types", value: filter_types))

        network.request(to: endpoint.build()) { (r: ValidatorRolesCountsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func statsForValidators(onSuccess: BlockchainCallbacks.StatsForValidators, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.statsForValidators.endpoint()

        network.request(to: endpoint.build()) { (r: StatsForValidatorsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func currentlyElectedValidators(onSuccess: BlockchainCallbacks.CurrentlyElectedValidators, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.currentlyElectedValidators.endpoint()

        network.request(to: endpoint.build()) { (r: CurrentlyElectedValidatorsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func electedValidatorsAtABlock(height: String, onSuccess: BlockchainCallbacks.ElectedValidatorsAtABlock, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.electedValidatorsAtABlock.endpoint(height)

        network.request(to: endpoint.build()) { (r: ElectedValidatorsAtABlockResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func electedValidatorsInAnElection(hash: String, onSuccess: BlockchainCallbacks.ElectedValidatorsInAnElection, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.electedValidatorsInAnElection.endpoint(hash)

        network.request(to: endpoint.build()) { (r: ElectedValidatorsInAnElectionResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardsForAValidator(address: String, min_time: String, max_time: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.RewardsForAValidator, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.rewardsForAValidator.endpoint(address)
            .add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
            .add(queryItem: ACMQueryModel(name: "max_time", value: max_time))

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: RewardsForAValidatorResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardTotalForAValidator(address: String, min_time: String, max_time: String, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotalForAValidator, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ValidatorsRoutes.rewardTotalForAValidator.endpoint(address)
            .add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
            .add(queryItem: ACMQueryModel(name: "max_time", value: max_time))

        if let bucket = bucket {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "bucket", value: bucket))
        }

        network.request(to: endpoint.build()) { (r: RewardTotalForAValidatorResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardTotalForAllValidators(address: String, min_time: String, max_time: String, onSuccess: BlockchainCallbacks.RewardTotalForAllValidators, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ValidatorsRoutes.rewardTotalForAllValidators.endpoint(address)
            .add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
            .add(queryItem: ACMQueryModel(name: "max_time", value: max_time))

        network.request(to: endpoint.build()) { (r: RewardTotalForAllValidatorsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
