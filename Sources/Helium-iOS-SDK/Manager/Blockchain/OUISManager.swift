//
//  OUISManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

class OUISManager: BaseManager {
    public func listOUIs(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListOUIs, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OUISRoutes.listOUIs.endpoint()

        var queryItems = [URLQueryItem]()

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        if queryItems.count > 0 {
            endpoint.queryItems = queryItems
        }

        self.request(to: endpoint) { (r: BaseResult<ListOUIsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func getAnOUI(oui: String, onSuccess: BlockchainCallbacks.GetAnOUI, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OUISRoutes.getAnOUI.endpoint(oui)

        self.request(to: endpoint) { (r: BaseResult<GetAnOUIResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func getLastAssignedOUI(min_time: String, max_time: String, onSuccess: BlockchainCallbacks.GetLastAssignedOUI, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OUISRoutes.getLastAssignedOUI.endpoint()

        self.request(to: endpoint) { (r: BaseResult<GetLastAssignedOUIResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func getOUIStats(block: String, onSuccess: BlockchainCallbacks.OraclePriceAtASpecificBlock, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OUISRoutes.getOUIStats.endpoint(block)

        self.request(to: endpoint) { (r: BaseResult<OraclePriceAtASpecificBlockResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
