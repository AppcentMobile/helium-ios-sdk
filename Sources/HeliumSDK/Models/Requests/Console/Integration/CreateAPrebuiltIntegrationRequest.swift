//
//  CreateAPrebuiltIntegrationRequest.swift
//
//
//  Created by Burak Colak on 24.10.2022.
//

struct CreateAPrebuiltIntegrationRequest: Encodable {
    var token: String
    var name: String
    var type: String
}
