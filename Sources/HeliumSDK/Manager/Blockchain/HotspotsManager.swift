//
//  HotspotsManager.swift
//
//
//  Created by Burak Colak on 19.10.2022.
//

import Foundation

class HeliumHotspotsManager: BaseManager {
    public func listHotspots(cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.ListHotspots, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ElectionsRoutes.listElections.endpoint()

        var queryItems = [URLQueryItem]()

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        if let filter_modes = filter_modes {
            queryItems.append(URLQueryItem(name: "filter_modes", value: filter_modes))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        request(to: endpoint) { (r: BaseResult<ListHotspotsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotForAddress(address: String? = nil, onSuccess: BlockchainCallbacks.HotspotForAddress, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ElectionsRoutes.listElections.endpoint(address)

        request(to: endpoint) { (r: BaseResult<HotspotForAddressResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotsForName(name: String?, onSuccess: BlockchainCallbacks.HotspotsForName, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ElectionsRoutes.listElections.endpoint(name)

        request(to: endpoint) { (r: BaseResult<HotspotsForNameResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotNameSearch(search: String, onSuccess: BlockchainCallbacks.HotspotNameSearch, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotNameSearch.endpoint()

        endpoint.queryItems = [URLQueryItem(name: "search", value: search)]

        request(to: endpoint) { (r: BaseResult<HotspotNameSearchResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotLocationDistanceSearch(lat: CGFloat, lon: CGFloat, distance: Int, cursor: String? = nil, onSuccess: BlockchainCallbacks.HotspotLocationDistanceSearch, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotLocationDistanceSearch.endpoint()

        var queryItems = [
            URLQueryItem(name: "lat", value: String(format: "%f", lat)),
            URLQueryItem(name: "lon", value: String(format: "%f", lon)),
            URLQueryItem(name: "distance", value: String(format: "%d", distance)),
        ]

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        endpoint.queryItems = queryItems

        request(to: endpoint) { (r: BaseResult<HotspotLocationDistanceSearchResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotLocationBoxSearch(swlat: CGFloat, swlon: CGFloat, nelat: CGFloat, nelon: CGFloat, cursor: String? = nil, onSuccess: BlockchainCallbacks.HotspotLocationBoxSearch, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotLocationDistanceSearch.endpoint()

        var queryItems = [
            URLQueryItem(name: "swlat", value: String(format: "%f", swlat)),
            URLQueryItem(name: "swlon", value: String(format: "%f", swlon)),
            URLQueryItem(name: "nelat", value: String(format: "%f", nelat)),
            URLQueryItem(name: "nelon", value: String(format: "%f", nelon)),
        ]

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        endpoint.queryItems = queryItems

        request(to: endpoint) { (r: BaseResult<HotspotLocationBoxSearchResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotsForH3Index(h3_index: String, onSuccess: BlockchainCallbacks.HotspotsForH3Index, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.hotspotsForH3Index.endpoint(h3_index)

        request(to: endpoint) { (r: BaseResult<HotspotsForH3IndexResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    public func hotspotActivity(address: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotActivity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotActivity.endpoint(address)

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

        request(to: endpoint) { (r: BaseResult<HotspotActivityResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotRoles(address: String? = nil, filter_types: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotRoles, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotRoles.endpoint(address)

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

        request(to: endpoint) { (r: BaseResult<HotspotRolesResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotRolesCounts(address: String, filter_types: String? = nil, onSuccess: BlockchainCallbacks.HotspotRolesCounts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotRoles.endpoint(address)

        if let filter_types = filter_types {
            endpoint.queryItems = [URLQueryItem(name: "filter_types", value: filter_types)]
        }

        request(to: endpoint) { (r: BaseResult<HotspotRolesCountsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotElections(address: String, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotElections, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotElections.endpoint(address)

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

        if let limit = limit {
            queryItems.append(URLQueryItem(name: "limit", value: String(format: "%d", limit)))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        request(to: endpoint) { (r: BaseResult<HotspotElectionsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func currentlyElectedHotspots(onSuccess: BlockchainCallbacks.CurrentlyElectedHotspots, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.currentlyElectedHotspots.endpoint()

        request(to: endpoint) { (r: BaseResult<CurrentlyElectedHotspotsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func hotspotChallenges(address: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.HotspotChallenges, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.hotspotChallenges.endpoint(address)

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

        if let limit = limit {
            queryItems.append(URLQueryItem(name: "limit", value: String(format: "%d", limit)))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        request(to: endpoint) { (r: BaseResult<HotspotChallengesResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func rewardsForAHotspot(address: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.rewardsForAHotspot.endpoint(address)

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

        request(to: endpoint) { (r: BaseResult<RewardsForAHotspotResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func rewardsInARewardsBlockForAHotspot(address: String, block: String? = nil, cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, onSuccess: BlockchainCallbacks.RewardsInARewardsBlockForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        let route = HotspotsRoutes.rewardsInARewardsBlockForAHotspot
        var endpoint = BaseEndpoint(path: String(format: route.path, address), method: route.method)
        if let block = block {
            endpoint = BaseEndpoint(path: String(format: route.path, address, block), method: route.method)
        }

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

        request(to: endpoint) { (r: BaseResult<RewardsInARewardsBlockForAHotspotResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func rewardTotalForAHotspot(address: String, min_time: String? = nil, max_time: String? = nil, bucket: String? = nil, onSuccess: BlockchainCallbacks.RewardTotalForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = HotspotsRoutes.rewardTotalForAHotspot.endpoint(address)

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

        request(to: endpoint) { (r: BaseResult<RewardTotalForAHotspotResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func witnessesForAHotspot(address: String, onSuccess: BlockchainCallbacks.WitnessesForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.witnessesForAHotspot.endpoint(address)

        request(to: endpoint) { (r: BaseResult<WitnessesForAHotspotResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func witnessedForAHotspot(address: String, onSuccess: BlockchainCallbacks.WitnessedForAHotspot, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = HotspotsRoutes.witnessedForAHotspot.endpoint(address)

        request(to: endpoint) { (r: BaseResult<WitnessedForAHotspotResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
