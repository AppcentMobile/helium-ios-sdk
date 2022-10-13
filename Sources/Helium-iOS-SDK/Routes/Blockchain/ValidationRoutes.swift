//
//  ValidationRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

//MARK: These docs reflect the Validator Mainnet API. If you would like to use the Testnet API, please use the following base url: https://testnet-api.helium.wtf/v1

struct ValidationRoutes {

    static let listValidators = "v1/validators"
    static let validatorForAddress = "v1/validators/%@"
    static let validatorsForName = "v1/validators/name/%@"
    static let validatorNameSearch = "validators/name"

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    static let validatorActivity = "v1/validators/%@/activity"

    static let validatorRoles = "v1/validators/%@/roles"
    static let validatorRolesCounts = "v1/validators/%@/roles/count"
    static let statsForValidators = "v1/validators/stats"
    static let currentlyElectedValidators = "v1/validators/elected"
    static let electedValidatorsAtABlock = "validators/elected/%d"
    static let electedValidatorsInAnElection = "v1/validators/elected/hash/%d"
    static let rewardsForAValidator = "v1/validators/%@/rewards"
    static let rewardTotalForAValidator = "v1/validators/%@/rewards/sum"
    static let rewardTotalForAllValidators = "v1/validators/%@/sum"

}
