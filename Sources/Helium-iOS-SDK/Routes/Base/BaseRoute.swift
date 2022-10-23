//
//  BaseRoute.swift
//  
//
//  Created by Burak Colak on 15.10.2022.
//

import UIKit

struct BaseRoute {
    var method: BaseMethod
    var path: String

    func endpoint(_ value: String? = nil) -> BaseEndpoint {
        if let value = value {
            return BaseEndpoint(path: String(format: path, value), method: method)
        }else {
            return BaseEndpoint(path: path, method: method)
        }
    }
}

extension BaseRoute {
    func consoleEndpoint(_ value: String? = nil, params: [String: Any]? = nil) -> BaseEndpoint {
        if let value = value {
            return BaseEndpoint(path: String(format: path, value), method: method, params: params, provider: .CONSOLE)
        }else {
            return BaseEndpoint(path: path, method: method, params: params, provider: .CONSOLE)
        }
    }
}
