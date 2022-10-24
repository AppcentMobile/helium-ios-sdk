//
//  CreateACustomHTTPIntegrationRequest.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

struct CreateACustomHTTPIntegrationRequest: Encodable {
    var name: String
    var type: String
    var endpoint: String
    var method: String
    var headers: String?
    var url_params: String?
}
