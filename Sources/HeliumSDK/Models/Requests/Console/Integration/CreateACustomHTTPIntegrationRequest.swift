//
//  CreateACustomHTTPIntegrationRequest.swift
//

struct CreateACustomHTTPIntegrationRequest: Encodable {
    var name: String
    var type: String
    var endpoint: String
    var method: String
    var headers: String?
    var url_params: String?
}
