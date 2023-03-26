//
//  BaseRoute.swift
//

import ACMNetworking

struct BaseRoute {
    var method: ACMBaseMethod
    var path: String

    func endpoint(_ value: String? = nil) -> ACMEndpoint {
        if let value = value {
            return ACMEndpoint()
                .set(method: method)
                .set(path: String(format: path, value))
        } else {
            return ACMEndpoint()
                .set(method: method)
                .set(path: path)
        }
    }
}

extension BaseRoute {
    func consoleEndpoint(_ value: String? = nil, params: [String: Any]? = nil) -> ACMEndpoint {
        var endpoint = ACMEndpoint()
            .set(host: Constants.CONSOLE_ENVIRONMENT.rawValue)
            .set(method: method)

        if let params = params {
            let bodyModelList = params.map { ACMBodyModel(key: $0.key, value: $0.value) }
            endpoint = endpoint.add(params: bodyModelList)
        }

        if let value = value {
            return endpoint.set(path: String(format: path, value))
        } else {
            return endpoint.set(path: path)
        }
    }
}
