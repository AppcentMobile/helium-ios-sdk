//
//  ValidatorsRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

//MARK: These docs reflect the Validator Mainnet API. If you would like to use the Testnet API, please use the following base url: https://testnet-api.helium.wtf/v1

struct ValidatorsRoutes {

    static let listValidators = BaseRoute(method: .get, path: "v1/validators")
    static let validatorForAddress = BaseRoute(method: .get, path: "v1/validators/%@")
    static let validatorsForName = BaseRoute(method: .get, path: "v1/validators/name/%@")
    static let validatorNameSearch = BaseRoute(method: .get, path: "validators/name")

    @available(*, deprecated, message: "The /activity route will be deprecated on May 1, 2022 and will be replaced by /roles")
    static let validatorActivity = BaseRoute(method: .get, path: "v1/validators/%@/activity")

    static let validatorRoles = BaseRoute(method: .get, path: "v1/validators/%@/roles")
    static let validatorRolesCounts = BaseRoute(method: .get, path: "v1/validators/%@/roles/count")
    static let statsForValidators = BaseRoute(method: .get, path: "v1/validators/stats")
    static let currentlyElectedValidators = BaseRoute(method: .get, path: "v1/validators/elected")
    static let electedValidatorsAtABlock = BaseRoute(method: .get, path: "v1/validators/elected/%d")
    static let electedValidatorsInAnElection = BaseRoute(method: .get, path: "v1/validators/elected/hash/%d")
    static let rewardsForAValidator = BaseRoute(method: .get, path: "v1/validators/%@/rewards")
    static let rewardTotalForAValidator = BaseRoute(method: .get, path: "v1/validators/%@/rewards/sum")
    static let rewardTotalForAllValidators = BaseRoute(method: .get, path: "v1/validators/%@/sum")

}
