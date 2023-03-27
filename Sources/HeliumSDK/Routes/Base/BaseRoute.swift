//
//  BaseRoute.swift
//

import ACMNetworking

struct BaseRoute {
    var method: ACMBaseMethod
    var path: String

    func endpoint(with endpoint: ACMEndpoint,
                  value: String? = nil) -> ACMEndpoint
    {
        if let value = value {
            return endpoint
                .set(method: method)
                .set(path: String(format: path, value))
        } else {
            return endpoint
                .set(method: method)
                .set(path: path)
        }
    }
}

extension BaseRoute {
    func consoleEndpoint(with endpoint: ACMEndpoint, value: String? = nil, params: [String: Any]? = nil) -> ACMEndpoint {
        var acmEndpoint = endpoint
            .set(host: Constants.CONSOLE_ENVIRONMENT.rawValue)
            .set(method: method)

        if let params = params {
            let bodyModelList = params.map { ACMBodyModel(key: $0.key, value: $0.value) }
            acmEndpoint = acmEndpoint.add(params: bodyModelList)
        }

        if let value = value {
            return acmEndpoint.set(path: String(format: path, value))
        } else {
            return acmEndpoint.set(path: path)
        }
    }
}
