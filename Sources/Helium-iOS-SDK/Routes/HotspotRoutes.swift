//
//  HotspotRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

struct HotspotRoutes {

    static let listHotspots = "v1/hotspots"
    static let hotspotForAddress = "v1/hotspots/%@"
    static let hotspotsForName = "v1/hotspots/name/%@"
    static let hotspotNameSearch = "v1/hotspots/name"
    static let hotspotLocationDistanceSearch = "v1/hotspots/location/distance"
    static let hotspotLocationBoxSearch = "v1/hotspots/location/box"
    static let hotspotsForH3Index = "v1/hotspots/hex/%@"

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    static let hotspotActivity = "v1/hotspots/%@/activity"

    static let hotspotRoles = "v1/hotspots/%@/roles"
    static let hotspotsRolesCounts = "v1/hotspots/%@/roles/count"
    static let hotspotElections = "v1/hotspots/%@/elections"
    static let currentlyElectedHotspots = "v1/hotspots/elected"
    static let hotspotChallenges = "v1/hotspots/%@/challenges"
    static let rewardsForAHotspot = "v1/hotspots/%@/rewards"
    static let rewardsInARewardsBlockForAHotspot = "v1/hotspots/%@/rewards/%@"
    static let rewardTotalForAHotspot = "v1/hotspots/%@/rewards/sum"
    static let witnessesForAHotspot = "v1/hotspots/%@/witnesses"
    static let witnessedForAHotspot = "v1/hotspots/%@/witnessed"

}
