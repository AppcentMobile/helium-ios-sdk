//
//  AccountRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

//MARK: https://docs.helium.com/api/blockchain/blocks

struct AccountRoutes {

    static let listAccounts = "v1/accounts"
    static let listRichestAccounts = "v1/accounts/rich"
    static let accountForAddress = "v1/accounts/%@"
    static let hotspotsForAccount = "v1/accounts/%@/hotspots"
    static let validatorsForAccount = "v1/accounts/%@/validators"
    static let ouisForAccount = "v1/accounts/%@/ouis"

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles, described below")
    static let activityForAccount = "v1/accounts/%@/activity"

    static let rolesForAccount = "v1/accounts/%@/roles"
    static let rolesCountsForAccount = "v1/accounts/%@/roles/count"
    static let electionsForAccount = "v1/accounts/%@/elections"
    static let challengesForAccount = "v1/accounts/%@/challenges"
    static let pendingTransactionsForAccount = "v1/accounts/%@/pending_transactions"

    //MARK: For older reward results, if the type is null the amount is a total for that account or hotspot in the given block.
    static let rewardsForAnAccount = "v1/accounts/%@/rewards"
    static let rewardsInARewardsBlockForAnAccount = "v1/accounts/:address/rewards/%@"
    static let rewardTotalsForAnAccount = "v1/accounts/%@/rewards/sum"

    static let statsForAccount = "v1/accounts/%@/stats"

}
