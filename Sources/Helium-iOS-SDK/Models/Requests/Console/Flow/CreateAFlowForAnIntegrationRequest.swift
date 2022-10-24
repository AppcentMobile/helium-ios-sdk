//
//  CreateAFlowForAnIntegrationRequest.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

struct CreateAFlowForAnIntegrationRequest: Encodable {
    var integration_id: String
    var device_id: String
    var function_id: String
}
