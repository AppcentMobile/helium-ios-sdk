//
//  CreateLabelRequest.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

struct CreateLabelRequest: Encodable {
    var name: String
    var config_profile_id: String?
}
