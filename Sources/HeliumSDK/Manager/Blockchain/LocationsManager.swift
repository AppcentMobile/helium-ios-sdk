//
//  LocationsManager.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

class HeliumLocationsManager: BaseManager {
    public func listHotspots(location: String, onSuccess: BlockchainCallbacks.GetLocation, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = LocationsRoutes.getLocation.endpoint(location)

        request(to: endpoint) { (r: BaseResult<GetLocationResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
