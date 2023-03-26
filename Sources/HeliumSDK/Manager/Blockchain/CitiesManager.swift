//
//  CitiesManager.swift
//

import ACMNetworking
import Foundation

public class HeliumCitiesManager: BaseBlockChainManager {
    public func listHotspotCities(search: String? = nil, cursor: String? = nil, onSuccess: BlockchainCallbacks.ListChallengeReceipts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = CitiesRoutes.listHotspotCities.endpoint()

        if let search = search {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "search", value: search))
        }

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: ListChallengeReceiptsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func cityForCityID(city_id: String, onSuccess: BlockchainCallbacks.CityForCityID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = CitiesRoutes.cityForCityID.endpoint(city_id)

        network.request(to: endpoint.build()) { (r: CityForCityIDResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func listHotspotsForACity(city_id: String, cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.ListHotspotsForACity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = CitiesRoutes.listHotspotsForACity.endpoint(city_id)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        if let filter_modes = filter_modes {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "filter_modes", value: filter_modes))
        }

        network.request(to: endpoint.build()) { (r: ListHotspotsForACityResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
