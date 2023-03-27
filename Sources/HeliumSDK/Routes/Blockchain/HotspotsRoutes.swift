//
//  HotspotsRoutes.swift
//

enum HotspotsRoutes {
    static let listHotspots = BaseRoute(method: .get, path: "v1/hotspots")
    static let hotspotForAddress = BaseRoute(method: .get, path: "v1/hotspots/%@")
    static let hotspotsForName = BaseRoute(method: .get, path: "v1/hotspots/name/%@")
    static let hotspotNameSearch = BaseRoute(method: .get, path: "v1/hotspots/name")
    static let hotspotLocationDistanceSearch = BaseRoute(method: .get, path: "v1/hotspots/location/distance")
    static let hotspotLocationBoxSearch = BaseRoute(method: .get, path: "v1/hotspots/location/box")
    static let hotspotsForH3Index = BaseRoute(method: .get, path: "v1/hotspots/hex/%@")

    static let hotspotActivity = BaseRoute(method: .get, path: "v1/hotspots/%@/activity")

    static let hotspotRoles = BaseRoute(method: .get, path: "v1/hotspots/%@/roles")
    static let hotspotsRolesCounts = BaseRoute(method: .get, path: "v1/hotspots/%@/roles/count")
    static let hotspotElections = BaseRoute(method: .get, path: "v1/hotspots/%@/elections")
    static let currentlyElectedHotspots = BaseRoute(method: .get, path: "v1/hotspots/elected")
    static let hotspotChallenges = BaseRoute(method: .get, path: "v1/hotspots/%@/challenges")
    static let rewardsForAHotspot = BaseRoute(method: .get, path: "v1/hotspots/%@/rewards")
    static let rewardsInARewardsBlockForAHotspot = BaseRoute(method: .get, path: "v1/hotspots/%@/rewards/%@")
    static let rewardTotalForAHotspot = BaseRoute(method: .get, path: "v1/hotspots/%@/rewards/sum")
    static let witnessesForAHotspot = BaseRoute(method: .get, path: "v1/hotspots/%@/witnesses")
    static let witnessedForAHotspot = BaseRoute(method: .get, path: "v1/hotspots/%@/witnessed")
}
