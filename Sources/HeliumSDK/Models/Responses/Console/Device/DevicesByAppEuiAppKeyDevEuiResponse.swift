//
//  DevicesByAppEuiAppKeyDevEuiResponse.swift
//

public struct DevicesByAppEuiAppKeyDevEuiResponse: Codable {
    public let app_eui: String?
    public let app_key: String?
    public let dev_eui: String?
    public let id: String?
    public let name: String?
    public let organization_id: String?
    public let oui: Int?

    enum CodingKeys: String, CodingKey {
        case app_eui
        case app_key
        case dev_eui
        case id
        case name
        case organization_id
        case oui
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        app_eui = try values.decodeIfPresent(String.self, forKey: .app_eui)
        app_key = try values.decodeIfPresent(String.self, forKey: .app_key)
        dev_eui = try values.decodeIfPresent(String.self, forKey: .dev_eui)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
        oui = try values.decodeIfPresent(Int.self, forKey: .oui)
    }
}
