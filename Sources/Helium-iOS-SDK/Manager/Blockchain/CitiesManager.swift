//
//  CitiesManager.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

import UIKit

public class CitiesManager: BaseManager {
    public func listHotspotCities(search: String? = nil, cursor: String? = nil, onSuccess: BlockchainCallbacks.ListChallengeReceipts, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = CitiesRoutes.listHotspotCities.endpoint()

        var queryItems = [URLQueryItem]()

        if let search = search {
            queryItems.append(URLQueryItem(name: "search", value: search))
        }

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<ListChallengeReceiptsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func cityForCityID(city_id: String, onSuccess: BlockchainCallbacks.CityForCityID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = CitiesRoutes.cityForCityID.endpoint(city_id)

        self.request(to: endpoint) { (r: BaseResult<CityForCityIDResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func listHotspotsForACity(city_id: String, cursor: String? = nil, filter_modes: String? = nil, onSuccess: BlockchainCallbacks.ListHotspotsForACity, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = CitiesRoutes.listHotspotsForACity.endpoint(city_id)

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

        self.request(to: endpoint) { (r: BaseResult<ListHotspotsForACityResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
