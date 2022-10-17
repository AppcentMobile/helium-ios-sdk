//
//  AssertLocationsManager.swift
//  
//
//  Created by Burak Colak on 17.10.2022.
//

import UIKit

public class AssertLocationsManager: BaseManager {
    private override init() {}

    public static let shared = AssertLocationsManager()
}

public extension AssertLocationsManager {
    func listAssertLocations(cursor: String? = nil, min_time: String? = nil, max_time: String? = nil, limit: Int? = nil, onSuccess: BlockchainCallbacks.ListAssertLocations, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = AssertLocationsRoutes.listAssertLocations.endpoint()

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

        self.request(to: endpoint) { (r: BaseResult<ListAssertLocationsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
