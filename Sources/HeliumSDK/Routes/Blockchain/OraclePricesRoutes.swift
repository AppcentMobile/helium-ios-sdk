//
//  OraclePricesRoutes.swift
//


enum OraclePricesRoutes {
    static let currentOraclePrice = BaseRoute(method: .get, path: "v1/oracle/prices/current")
    static let currentAndHistoricalOraclePrices = BaseRoute(method: .get, path: "v1/oracle/prices")
    static let oraclePriceStats = BaseRoute(method: .get, path: "v1/oracle/prices/stats")
    static let oraclePriceAtASpecificBlock = BaseRoute(method: .get, path: "v1/oracle/prices/%@")
    static let listOracleActivity = BaseRoute(method: .get, path: "v1/oracle/activity")
    static let listActivityForASpecificOracle = BaseRoute(method: .get, path: "v1/oracle/%@/activity")
    static let getPredictedHNTOraclePrices = BaseRoute(method: .get, path: "v1/oracle/predictions")
}
