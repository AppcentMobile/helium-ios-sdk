//
//  AccountsRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

struct AccountsRoutes {
    static let listAccounts = BaseRoute(method: .get, path: "v1/accounts")
    static let listRichestAccounts = BaseRoute(method: .get, path: "v1/accounts/rich")
    static let accountForAddress = BaseRoute(method: .get, path: "v1/accounts/%@")
    static let hotspotsForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/hotspots")
    static let validatorsForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/validators")
    static let ouisForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/ouis")

    static let activityForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/activity")

    static let rolesForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/roles")
    static let rolesCountsForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/roles/count")
    static let electionsForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/elections")
    static let challengesForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/challenges")
    static let pendingTransactionsForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/pending_transactions")

    //MARK: For older reward results, if the type is null the amount is a total for that account or hotspot in the given block.
    static let rewardsForAnAccount = BaseRoute(method: .get, path: "v1/accounts/%@/rewards")
    static let rewardsInARewardsBlockForAnAccount = BaseRoute(method: .get, path: "v1/accounts/%@/rewards/%@")
    static let rewardTotalsForAnAccount = BaseRoute(method: .get, path: "v1/accounts/%@/rewards/sum")

    static let statsForAccount = BaseRoute(method: .get, path: "v1/accounts/%@/stats")
}
