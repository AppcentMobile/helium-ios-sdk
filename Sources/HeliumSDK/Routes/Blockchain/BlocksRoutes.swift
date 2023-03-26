//
//  BlocksRoutes.swift
//

enum BlocksRoutes {
    static let blocksHeight = BaseRoute(method: .get, path: "v1/blocks/height")
    static let blocksStats = BaseRoute(method: .get, path: "v1/blocks/stats")
    static let blocksDescription = BaseRoute(method: .get, path: "v1/blocks")
    static let blockAtHeight = BaseRoute(method: .get, path: "v1/blocks/%d")
    static let blockAtHeightTransactions = BaseRoute(method: .get, path: "v1/blocks/%d/transactions")
    static let blockAtHash = BaseRoute(method: .get, path: "v1/blocks/hash/%@")
    static let blockAtHashTransactions = BaseRoute(method: .get, path: "v1/blocks/hash/:hash/transactions")
}
