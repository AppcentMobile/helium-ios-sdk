//
//  CreateACustomAzureIoTHubIntegrationRequest.swift
//
//
//  Created by Burak Colak on 24.10.2022.
//

struct CreateACustomAzureIoTHubIntegrationRequest: Encodable {
    var name: String
    var type: String
    var azure_policy_name: String
    var azure_hub_name: String
    var azure_primary_key: String
}
