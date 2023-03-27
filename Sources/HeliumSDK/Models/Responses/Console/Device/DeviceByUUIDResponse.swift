//
//  DeviceByUUIDResponse.swift
//

public struct DeviceByUUIDResponse: Codable {
    public let id: String?
    public let adr_allowed: String?
    public let app_eui: String?
    public let app_key: String?
    public let cf_list_enabled: String?
    public let dc_usage: Int?
    public let dev_eui: String?
    public let in_xor_filter: Bool?
    public let labels: [String]?
    public let last_connected: String?
    public let name: String?
    public let organization_id: String?
    public let oui: Int?
    public let total_packets: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case adr_allowed
        case app_eui
        case app_key
        case cf_list_enabled
        case dc_usage
        case dev_eui
        case in_xor_filter
        case labels
        case last_connected
        case name
        case organization_id
        case oui
        case total_packets
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        adr_allowed = try values.decodeIfPresent(String.self, forKey: .adr_allowed)
        app_eui = try values.decodeIfPresent(String.self, forKey: .app_eui)
        app_key = try values.decodeIfPresent(String.self, forKey: .app_key)
        cf_list_enabled = try values.decodeIfPresent(String.self, forKey: .cf_list_enabled)
        dc_usage = try values.decodeIfPresent(Int.self, forKey: .dc_usage)
        dev_eui = try values.decodeIfPresent(String.self, forKey: .dev_eui)
        in_xor_filter = try values.decodeIfPresent(Bool.self, forKey: .in_xor_filter)
        labels = try values.decodeIfPresent([String].self, forKey: .labels)
        last_connected = try values.decodeIfPresent(String.self, forKey: .last_connected)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
        oui = try values.decodeIfPresent(Int.self, forKey: .oui)
        total_packets = try values.decodeIfPresent(Int.self, forKey: .total_packets)
    }
}
