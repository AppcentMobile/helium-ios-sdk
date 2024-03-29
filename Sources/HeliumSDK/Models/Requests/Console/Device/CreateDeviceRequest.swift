//
//  CreateDeviceRequest.swift
//

struct CreateDeviceRequest: Encodable {
    var name: String
    var app_eui: String
    var app_key: String
    var dev_eui: String
    var config_profile_id: String?
    var label_ids: [String]?
}
