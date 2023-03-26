//
//  DeviceEventsResponse.swift
//

public struct DeviceEventsResponse: Codable {
    public let category: String?
    public let data: DeviceEventsDataResponse?
    public let description: String?
    public let device_id: String?
    public let frame_down: String?
    public let frame_up: Int?
    public let organization_id: String?
    public let reported_at: String?
    public let router_uuid: String?
    public let sub_category: String?

    enum CodingKeys: String, CodingKey {
        case category
        case data
        case description
        case device_id
        case frame_down
        case frame_up
        case organization_id
        case reported_at
        case router_uuid
        case sub_category
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        data = try values.decodeIfPresent(DeviceEventsDataResponse.self, forKey: .data)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        device_id = try values.decodeIfPresent(String.self, forKey: .device_id)
        frame_down = try values.decodeIfPresent(String.self, forKey: .frame_down)
        frame_up = try values.decodeIfPresent(Int.self, forKey: .frame_up)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
        reported_at = try values.decodeIfPresent(String.self, forKey: .reported_at)
        router_uuid = try values.decodeIfPresent(String.self, forKey: .router_uuid)
        sub_category = try values.decodeIfPresent(String.self, forKey: .sub_category)
    }
}

public struct DeviceEventsDataResponse: Codable {
    public let dc: DeviceEventsDcResponse?
    public let devaddr: String?
    public let fcnt: Int?
    public let hold_time: Int?
    public let hotspot: DeviceEventsHotspotResponse?
    public let mac: [String]?
    public let payload: String?
    public let payload_size: Int?
    public let port: Int?

    enum CodingKeys: String, CodingKey {
        case dc
        case devaddr
        case fcnt
        case hold_time
        case hotspot
        case mac
        case payload
        case payload_size
        case port
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dc = try values.decodeIfPresent(DeviceEventsDcResponse.self, forKey: .dc)
        devaddr = try values.decodeIfPresent(String.self, forKey: .devaddr)
        fcnt = try values.decodeIfPresent(Int.self, forKey: .fcnt)
        hold_time = try values.decodeIfPresent(Int.self, forKey: .hold_time)
        hotspot = try values.decodeIfPresent(DeviceEventsHotspotResponse.self, forKey: .hotspot)
        mac = try values.decodeIfPresent([String].self, forKey: .mac)
        payload = try values.decodeIfPresent(String.self, forKey: .payload)
        payload_size = try values.decodeIfPresent(Int.self, forKey: .payload_size)
        port = try values.decodeIfPresent(Int.self, forKey: .port)
    }
}

public struct DeviceEventsDcResponse: Codable {
    public let balance: Int?
    public let nonce: Int?
    public let used: Int?

    enum CodingKeys: String, CodingKey {
        case balance
        case nonce
        case used
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        balance = try values.decodeIfPresent(Int.self, forKey: .balance)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        used = try values.decodeIfPresent(Int.self, forKey: .used)
    }
}

public struct DeviceEventsHotspotResponse: Codable {
    public let channel: Int?
    public let frequency: Double?
    public let id: String?
    public let lat: Double?
    public let long: Double?
    public let name: String?
    public let rssi: Double?
    public let snr: Double?
    public let spreading: String?

    enum CodingKeys: String, CodingKey {
        case channel
        case frequency
        case id
        case lat
        case long
        case name
        case rssi
        case snr
        case spreading
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        channel = try values.decodeIfPresent(Int.self, forKey: .channel)
        frequency = try values.decodeIfPresent(Double.self, forKey: .frequency)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        long = try values.decodeIfPresent(Double.self, forKey: .long)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        rssi = try values.decodeIfPresent(Double.self, forKey: .rssi)
        snr = try values.decodeIfPresent(Double.self, forKey: .snr)
        spreading = try values.decodeIfPresent(String.self, forKey: .spreading)
    }
}
