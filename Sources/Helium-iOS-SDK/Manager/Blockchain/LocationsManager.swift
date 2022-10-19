//
//  LocationsManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

class LocationsManager: BaseManager {
    public func listHotspots(location: String, onSuccess: BlockchainCallbacks.GetLocation, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = LocationsRoutes.getLocation.endpoint(location)

        self.request(to: endpoint) { (r: BaseResult<GetLocationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
