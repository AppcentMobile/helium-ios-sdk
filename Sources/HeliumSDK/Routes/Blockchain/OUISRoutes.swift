//
//  OUISRoutes.swift
//

enum OUISRoutes {
    static let listOUIs = BaseRoute(method: .get, path: "v1/ouis")
    static let getAnOUI = BaseRoute(method: .get, path: "v1/ouis/%@")
    static let getLastAssignedOUI = BaseRoute(method: .get, path: "v1/ouis/last")
    static let getOUIStats = BaseRoute(method: .get, path: "v1/ouis/stats")
}
