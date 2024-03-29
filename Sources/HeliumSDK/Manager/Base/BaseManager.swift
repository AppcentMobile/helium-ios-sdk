//
//  BaseManager.swift
//

import ACMNetworking
import Foundation

public class BaseManager {
    var network: ACMNetworking!

    public required init() {
        network = ACMNetworking()
    }
}

public class BaseBlockChainManager: BaseManager {
    var acmEndpoint: ACMEndpoint!

    public required init() {
        super.init()
        acmEndpoint = ACMEndpoint()
            .update(configOverride: true)
            .set(host: Constants.BLOCKHAIN_ENVIRONMENT.rawValue)
    }
}

public class BaseConsoleManager: BaseManager {
    var acmEndpoint: ACMEndpoint!

    public required init() {
        super.init()
        acmEndpoint = ACMEndpoint()
            .update(configOverride: true)
            .set(host: Constants.CONSOLE_ENVIRONMENT.rawValue)
            .add(header: ACMHeaderModel(field: "key", value: Constants.API_KEY))
    }
}
