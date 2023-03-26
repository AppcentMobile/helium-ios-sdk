//
//  CreateAFlowForAnIntegrationRequest.swift
//

struct CreateAFlowForAnIntegrationRequest: Encodable {
    var integration_id: String
    var device_id: String
    var function_id: String
}
