//
//  StatsRoutes.swift
//
//
//  Created by Burak Colak on 13.10.2022.
//

enum StatsRoutes {
    static let stats = BaseRoute(method: .get, path: "v1/stats")
    static let tokenSupply = BaseRoute(method: .get, path: "v1/stats/token_supply")
}
