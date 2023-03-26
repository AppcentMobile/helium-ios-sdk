//
//  ValidatorsRoutes.swift
//


enum ValidatorsRoutes {
    static let listValidators = BaseRoute(method: .get, path: "v1/validators")
    static let validatorForAddress = BaseRoute(method: .get, path: "v1/validators/%@")
    static let validatorsForName = BaseRoute(method: .get, path: "v1/validators/name/%@")
    static let validatorNameSearch = BaseRoute(method: .get, path: "validators/name")

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
