//
//  CreateACustomAWSIoTCoreIntegrationRequest.swift
//

struct CreateACustomAWSIoTCoreIntegrationRequest: Encodable {
    var name: String
    var type: String
    var topic: String
    var aws_access_key: String
    var aws_secret_key: String
    var aws_region: String
}
