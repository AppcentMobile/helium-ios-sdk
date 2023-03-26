//
//  CreateACustomAzureIoTHubIntegrationRequest.swift
//

struct CreateACustomAzureIoTHubIntegrationRequest: Encodable {
    var name: String
    var type: String
    var azure_policy_name: String
    var azure_hub_name: String
    var azure_primary_key: String
}
