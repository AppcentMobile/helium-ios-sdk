//
//  DevicesListResponse.swift
//

public struct DevicesListResponse: Codable {
    public let active: Bool?
    public let adr_allowed: String?
    public let app_eui: String?
    public let app_key: String?
    public let dev_eui: String?
    public let cf_list_enabled: String?
    public let config_profile_id: String?
    public let dc_usage: Int?
    public let id: String?
    public let in_xor_filter: Bool?
    public let labels: [String]?
    public let last_connected: String?
    public let name: String?
    public let organization_id: String?
    public let oui: Int?
    public let rx_delay: Int?
    public let total_packets: Int?

    enum CodingKeys: String, CodingKey {
        case active
        case adr_allowed
        case app_eui
        case app_key
        case dev_eui
        case cf_list_enabled
        case config_profile_id
        case dc_usage
        case id
        case in_xor_filter
        case labels
        case last_connected
        case name
        case organization_id
        case oui
        case rx_delay
        case total_packets
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        active = try values.decodeIfPresent(Bool.self, forKey: .active)
        adr_allowed = try values.decodeIfPresent(String.self, forKey: .adr_allowed)
        app_eui = try values.decodeIfPresent(String.self, forKey: .app_eui)
        app_key = try values.decodeIfPresent(String.self, forKey: .app_key)
        dev_eui = try values.decodeIfPresent(String.self, forKey: .dev_eui)
        cf_list_enabled = try values.decodeIfPresent(String.self, forKey: .cf_list_enabled)
        config_profile_id = try values.decodeIfPresent(String.self, forKey: .config_profile_id)
        dc_usage = try values.decodeIfPresent(Int.self, forKey: .dc_usage)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        in_xor_filter = try values.decodeIfPresent(Bool.self, forKey: .in_xor_filter)
        labels = try values.decodeIfPresent([String].self, forKey: .labels)
        last_connected = try values.decodeIfPresent(String.self, forKey: .last_connected)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
        oui = try values.decodeIfPresent(Int.self, forKey: .oui)
        rx_delay = try values.decodeIfPresent(Int.self, forKey: .rx_delay)
        total_packets = try values.decodeIfPresent(Int.self, forKey: .total_packets)
    }
}
