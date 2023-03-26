//
//  LocationsManager.swift
//

import ACMNetworking

class HeliumLocationsManager: BaseBlockChainManager {
    public func listHotspots(location: String, onSuccess: BlockchainCallbacks.GetLocation, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = LocationsRoutes.getLocation.endpoint(location)

        network.request(to: endpoint.build()) { (r: GetLocationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
