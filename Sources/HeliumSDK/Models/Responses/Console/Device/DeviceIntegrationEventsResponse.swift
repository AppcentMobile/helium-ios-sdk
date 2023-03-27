//
//  DeviceIntegrationEventsResponse.swift
//

public struct DeviceIntegrationEventsResponse: Codable {
    public let category: String?
    public let data: DeviceIntegrationEventsDataResponse?
    public let description: String?
    public let device_id: String?
    public let organization_id: String?
    public let reported_at: String?
    public let router_uuid: String?
    public let sub_category: String?

    enum CodingKeys: String, CodingKey {
        case category
        case data
        case description
        case device_id
        case organization_id
        case reported_at
        case router_uuid
        case sub_category
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        data = try values.decodeIfPresent(DeviceIntegrationEventsDataResponse.self, forKey: .data)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        device_id = try values.decodeIfPresent(String.self, forKey: .device_id)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
        reported_at = try values.decodeIfPresent(String.self, forKey: .reported_at)
        router_uuid = try values.decodeIfPresent(String.self, forKey: .router_uuid)
        sub_category = try values.decodeIfPresent(String.self, forKey: .sub_category)
    }
}

public struct DeviceIntegrationEventsDataResponse: Codable {
    public let integration: DeviceIntegrationEventsIntegrationResponse?
    public let req: DeviceIntegrationEventsReqResponse?

    enum CodingKeys: String, CodingKey {
        case integration
        case req
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        integration = try values.decodeIfPresent(DeviceIntegrationEventsIntegrationResponse.self, forKey: .integration)
        req = try values.decodeIfPresent(DeviceIntegrationEventsReqResponse.self, forKey: .req)
    }
}

public struct DeviceIntegrationEventsIntegrationResponse: Codable {
    public let id: String?
    public let name: String?
    public let status: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        status = try values.decodeIfPresent(String.self, forKey: .status)
    }
}

public struct DeviceIntegrationEventsReqResponse: Codable {
    public let body: DeviceIntegrationEventsBodyResponse?
    public let qos: Int?

    enum CodingKeys: String, CodingKey {
        case body
        case qos
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        body = try values.decodeIfPresent(DeviceIntegrationEventsBodyResponse.self, forKey: .body)
        qos = try values.decodeIfPresent(Int.self, forKey: .qos)
    }
}

public struct DeviceIntegrationEventsBodyResponse: Codable {
    public let app_eui: String?
    public let dev_eui: String?
    public let devaddr: String?
    public let fcnt: Int?
    public let hotspots: [DeviceIntegrationEventsHotspotsResponse]?
    public let id: String?
    public let metadata: DeviceIntegrationEventsMetadataResponse?
    public let name: String?
    public let payload: String?
    public let payload_size: Int?
    public let port: Int?
    public let reported_at: Int?
    public let uuid: String?

    enum CodingKeys: String, CodingKey {
        case app_eui
        case dev_eui
        case devaddr
        case fcnt
        case hotspots
        case id
        case metadata
        case name
        case payload
        case payload_size
        case port
        case reported_at
        case uuid
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        app_eui = try values.decodeIfPresent(String.self, forKey: .app_eui)
        dev_eui = try values.decodeIfPresent(String.self, forKey: .dev_eui)
        devaddr = try values.decodeIfPresent(String.self, forKey: .devaddr)
        fcnt = try values.decodeIfPresent(Int.self, forKey: .fcnt)
        hotspots = try values.decodeIfPresent([DeviceIntegrationEventsHotspotsResponse].self, forKey: .hotspots)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        metadata = try values.decodeIfPresent(DeviceIntegrationEventsMetadataResponse.self, forKey: .metadata)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        payload = try values.decodeIfPresent(String.self, forKey: .payload)
        payload_size = try values.decodeIfPresent(Int.self, forKey: .payload_size)
        port = try values.decodeIfPresent(Int.self, forKey: .port)
        reported_at = try values.decodeIfPresent(Int.self, forKey: .reported_at)
        uuid = try values.decodeIfPresent(String.self, forKey: .uuid)
    }
}

public struct DeviceIntegrationEventsHotspotsResponse: Codable {
    public let channel: Int?
    public let frequency: Double?
    public let hold_time: Int?
    public let id: String?
    public let lat: String?
    public let long: String?
    public let name: String?
    public let reported_at: Int?
    public let rssi: Double?
    public let snr: Double?
    public let spreading: String?
    public let status: String?

    enum CodingKeys: String, CodingKey {
        case channel
        case frequency
        case hold_time
        case id
        case lat
        case long
        case name
        case reported_at
        case rssi
        case snr
        case spreading
        case status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        channel = try values.decodeIfPresent(Int.self, forKey: .channel)
        frequency = try values.decodeIfPresent(Double.self, forKey: .frequency)
        hold_time = try values.decodeIfPresent(Int.self, forKey: .hold_time)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        lat = try values.decodeIfPresent(String.self, forKey: .lat)
        long = try values.decodeIfPresent(String.self, forKey: .long)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        reported_at = try values.decodeIfPresent(Int.self, forKey: .reported_at)
        rssi = try values.decodeIfPresent(Double.self, forKey: .rssi)
        snr = try values.decodeIfPresent(Double.self, forKey: .snr)
        spreading = try values.decodeIfPresent(String.self, forKey: .spreading)
        status = try values.decodeIfPresent(String.self, forKey: .status)
    }
}

public struct DeviceIntegrationEventsMetadataResponse: Codable {
    public let adr_allowed: Bool?
    public let cf_list_enabled: Bool?
    public let multi_buy: Int?
    public let organization_id: String?

    enum CodingKeys: String, CodingKey {
        case adr_allowed
        case cf_list_enabled
        case multi_buy
        case organization_id
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        adr_allowed = try values.decodeIfPresent(Bool.self, forKey: .adr_allowed)
        cf_list_enabled = try values.decodeIfPresent(Bool.self, forKey: .cf_list_enabled)
        multi_buy = try values.decodeIfPresent(Int.self, forKey: .multi_buy)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
    }
}
