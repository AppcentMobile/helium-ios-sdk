//
//  CreateACustomMQTTIntegrationRequest.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

struct CreateACustomMQTTIntegrationRequest: Encodable {
    var name: String
    var type: String
    var endpoint: String
    var uplink_topic: String
    var downlink_topic: String
}
