//
//  StatsRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//



//MARK: https://docs.helium.com/api/blockchain/stats

struct StatsRoutes {

    static let stats = BaseRoute(method: .get, path: "v1/stats")
    static let tokenSupply = BaseRoute(method: .get, path: "v1/stats/token_supply")

}
