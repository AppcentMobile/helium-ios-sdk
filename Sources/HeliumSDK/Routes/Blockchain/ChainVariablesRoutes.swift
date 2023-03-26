//
//  ChainVariablesRoutes.swift
//


enum ChainVariablesRoutes {
    static let getChainVariables = BaseRoute(method: .get, path: "v1/vars")
    static let getTheValueOfAChainVariable = BaseRoute(method: .get, path: "v1/vars/%@")
    static let listChainVariableActivity = BaseRoute(method: .get, path: "v1/vars/activity")
}
