//
//  CreateACustomAWSIoTCoreIntegrationRequest.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

struct CreateACustomAWSIoTCoreIntegrationRequest: Encodable {
    var name: String
    var type: String
    var topic: String
    var aws_access_key: String
    var aws_secret_key: String
    var aws_region: String
}
