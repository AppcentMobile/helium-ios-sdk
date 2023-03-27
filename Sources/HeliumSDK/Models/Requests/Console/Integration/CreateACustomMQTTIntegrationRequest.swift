//
//  CreateACustomMQTTIntegrationRequest.swift
//

struct CreateACustomMQTTIntegrationRequest: Encodable {
    var name: String
    var type: String
    var endpoint: String
    var uplink_topic: String
    var downlink_topic: String
}
