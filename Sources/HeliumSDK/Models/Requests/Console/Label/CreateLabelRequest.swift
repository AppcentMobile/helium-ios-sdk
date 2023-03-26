//
//  CreateLabelRequest.swift
//

struct CreateLabelRequest: Encodable {
    var name: String
    var config_profile_id: String?
}
