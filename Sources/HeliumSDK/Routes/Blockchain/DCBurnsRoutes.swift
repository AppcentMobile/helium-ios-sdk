//
//  DCBurnsRoutes.swift
//

enum DCBurnsRoutes {
    static let dCBurnTotals = BaseRoute(method: .get, path: "v1/dc_burns/sum")
    static let dCBurnStats = BaseRoute(method: .get, path: "v1/dc_burns/stats")
    static let dCBurnEvents = BaseRoute(method: .get, path: "v1/dc_burns")
}
