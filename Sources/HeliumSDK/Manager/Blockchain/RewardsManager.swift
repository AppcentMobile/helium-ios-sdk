//
//  RewardsManager.swift
//


import ACMNetworking

class HeliumRewardsManager: BaseManager {
    public func rewardTotals(min_time: String, max_time: String, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotals, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = RewardsRoutes.rewardTotals.endpoint()
            .add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
            .add(queryItem: ACMQueryModel(name: "max_time", value: max_time))

        if let bucket = bucket {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "bucket", value: bucket))
        }

        network.request(to: endpoint.build()) { (r: RewardTotalsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
