//
//  BaseRoute.swift
//

import ACMNetworking

extension BaseMethod {
    var toACM: ACMBaseMethod {
        ACMBaseMethod(rawValue: rawValue) ?? .get
    }
}

struct BaseRoute {
    var method: BaseMethod
    var path: String

    func endpoint(_ value: String? = nil) -> ACMEndpoint {
        if let value = value {
            return ACMEndpoint()
                .set(method: method.toACM)
                .set(path: String(format: path, value))
        } else {
            return ACMEndpoint()
                .set(method: method.toACM)
                .set(path: path)
        }
    }
}

extension BaseRoute {
    func consoleEndpoint(_ value: String? = nil, params: [String: Any]? = nil) -> BaseEndpoint {
        if let value = value {
            return BaseEndpoint(path: String(format: path, value), method: method, params: params, provider: .CONSOLE)
        } else {
            return BaseEndpoint(path: path, method: method, params: params, provider: .CONSOLE)
        }
    }
}
