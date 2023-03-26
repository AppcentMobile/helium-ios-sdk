//
//  HotspotsManager.swift
//


import ACMNetworking
import Foundation

class HeliumHotspotsManager: BaseManager {
    public func listHotspots(cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.ListHotspots, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ElectionsRoutes.listElections.endpoint()

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let filter_modes = filter_modes {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_modes", value: filter_modes))
        }

        network.request(to: endpoint.build()) { (r: ListHotspotsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotForAddress(address: String? = nil, onSuccess: BlockchainCallbacks.HotspotForAddress, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ElectionsRoutes.listElections.endpoint(address)

        network.request(to: endpoint.build()) { (r: HotspotForAddressResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotsForName(name: String?, onSuccess: BlockchainCallbacks.HotspotsForName, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ElectionsRoutes.listElections.endpoint(name)

        network.request(to: endpoint.build()) { (r: HotspotsForNameResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotNameSearch(search: String, onSuccess: BlockchainCallbacks.HotspotNameSearch, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.hotspotNameSearch.endpoint()
            .add(queryItem: ACMQueryModel(name: "search", value: search))

        network.request(to: endpoint.build()) { (r: HotspotNameSearchResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotLocationDistanceSearch(lat: CGFloat, lon: CGFloat, distance: Int, cursor: String? = nil, onSuccess: BlockchainCallbacks.HotspotLocationDistanceSearch, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotLocationDistanceSearch.endpoint()
            .add(queryItem: ACMQueryModel(name: "lat", value: String(format: "%f", lat)))
            .add(queryItem: ACMQueryModel(name: "lon", value: String(format: "%f", lon)))
            .add(queryItem: ACMQueryModel(name: "distance", value: String(format: "%d", distance)))

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: HotspotLocationDistanceSearchResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotLocationBoxSearch(swlat: CGFloat, swlon: CGFloat, nelat: CGFloat, nelon: CGFloat, cursor: String? = nil, onSuccess: BlockchainCallbacks.HotspotLocationBoxSearch, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotLocationDistanceSearch.endpoint()
            .add(queryItem: ACMQueryModel(name: "swlat", value: String(format: "%f", swlat)))
            .add(queryItem: ACMQueryModel(name: "swlon", value: String(format: "%f", swlon)))
            .add(queryItem: ACMQueryModel(name: "nelat", value: String(format: "%f", nelat)))
            .add(queryItem: ACMQueryModel(name: "nelon", value: String(format: "%f", nelon)))

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: HotspotLocationBoxSearchResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotsForH3Index(h3_index: String, onSuccess: BlockchainCallbacks.HotspotsForH3Index, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.hotspotsForH3Index.endpoint(h3_index)

        network.request(to: endpoint.build()) { (r: HotspotsForH3IndexResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    public func hotspotActivity(address: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotActivity.endpoint(address)

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

        network.request(to: endpoint.build()) { (r: HotspotActivityResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotRoles(address: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotRoles, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotRoles.endpoint(address)

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

        network.request(to: endpoint.build()) { (r: HotspotRolesResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotRolesCounts(address: String, filter_types: String? = nil, onSuccess: BlockchainCallbacks.HotspotRolesCounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotRoles.endpoint(address)

        if let filter_types = filter_types {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_types", value: filter_types))
        }

        network.request(to: endpoint.build()) { (r: HotspotRolesCountsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotElections(address: String, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotElections, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotElections.endpoint(address)

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

        network.request(to: endpoint.build()) { (r: HotspotElectionsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func currentlyElectedHotspots(onSuccess: BlockchainCallbacks.CurrentlyElectedHotspots, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.currentlyElectedHotspots.endpoint()

        network.request(to: endpoint.build()) { (r: CurrentlyElectedHotspotsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func hotspotChallenges(address: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotChallenges, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotChallenges.endpoint(address)

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

        network.request(to: endpoint.build()) { (r: HotspotChallengesResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardsForAHotspot(address: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.rewardsForAHotspot.endpoint(address)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        network.request(to: endpoint.build()) { (r: RewardsForAHotspotResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardsInARewardsBlockForAHotspot(address: String, block: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsInARewardsBlockForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        let route = HotspotsRoutes.rewardsInARewardsBlockForAHotspot
        var endpoint = ACMEndpoint()
            .set(method: route.method.toACM)

        if let block = block {
            endpoint = endpoint.set(path: String(format: route.path, address, block))
        } else {
            endpoint = endpoint.set(path: String(format: route.path, address))
        }

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        network.request(to: endpoint.build()) { (r: RewardsInARewardsBlockForAHotspotResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func rewardTotalForAHotspot(address: String, min_time: String? = nil, max_time: String? = nil, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotalForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.rewardTotalForAHotspot.endpoint(address)

        if let min_time = min_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "min_time", value: min_time))
        }

        if let max_time = max_time {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "max_time", value: max_time))
        }

        if let bucket = bucket {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "bucket", value: bucket))
        }

        network.request(to: endpoint.build()) { (r: RewardTotalForAHotspotResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func witnessesForAHotspot(address: String, onSuccess: BlockchainCallbacks.WitnessesForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.witnessesForAHotspot.endpoint(address)

        network.request(to: endpoint.build()) { (r: WitnessesForAHotspotResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func witnessedForAHotspot(address: String, onSuccess: BlockchainCallbacks.WitnessedForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.witnessedForAHotspot.endpoint(address)

        network.request(to: endpoint.build()) { (r: WitnessedForAHotspotResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
