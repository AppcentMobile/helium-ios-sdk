//
//  WitnessedForAHotspotResponse.swift
//

public struct WitnessedForAHotspotResponse: Codable {
    public let data: [WitnessedForAHotspotDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([WitnessedForAHotspotDataResponse].self, forKey: .data)
    }
}

public struct WitnessedForAHotspotDataResponse: Codable {
    public let address: String?
    public let block: Int?
    public let block_added: Int?
    public let elevation: Int?
    public let gain: Int?
    public let geocode: WitnessedForAHotspotGeocodeResponse?
    public let last_change_block: Int?
    public let last_poc_challenge: Int?
    public let lat: Double?
    public let lng: Double?
    public let location: String?
    public let location_hex: String?
    public let mode: String?
    public let name: String?
    public let nonce: Int?
    public let owner: String?
    public let payer: String?
    public let reward_scale: Double?
    public let status: WitnessedForAHotspotStatusResponse?
    public let timestamp_added: String?

    enum CodingKeys: String, CodingKey {
        case address
        case block
        case block_added
        case elevation
        case gain
        case geocode
        case last_change_block
        case last_poc_challenge
        case lat
        case lng
        case location
        case location_hex
        case mode
        case name
        case nonce
        case owner
        case payer
        case reward_scale
        case status
        case timestamp_added
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        elevation = try values.decodeIfPresent(Int.self, forKey: .elevation)
        gain = try values.decodeIfPresent(Int.self, forKey: .gain)
        geocode = try values.decodeIfPresent(WitnessedForAHotspotGeocodeResponse.self, forKey: .geocode)
        last_change_block = try values.decodeIfPresent(Int.self, forKey: .last_change_block)
        last_poc_challenge = try values.decodeIfPresent(Int.self, forKey: .last_poc_challenge)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        location_hex = try values.decodeIfPresent(String.self, forKey: .location_hex)
        mode = try values.decodeIfPresent(String.self, forKey: .mode)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        payer = try values.decodeIfPresent(String.self, forKey: .payer)
        reward_scale = try values.decodeIfPresent(Double.self, forKey: .reward_scale)
        status = try values.decodeIfPresent(WitnessedForAHotspotStatusResponse.self, forKey: .status)
        timestamp_added = try values.decodeIfPresent(String.self, forKey: .timestamp_added)
    }
}

public struct WitnessedForAHotspotStatusResponse: Codable {
    public let height: Int?
    public let listen_addrs: [String]?
    public let online: String?
    public let timestamp: String?

    enum CodingKeys: String, CodingKey {
        case height
        case listen_addrs
        case online
        case timestamp
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        listen_addrs = try values.decodeIfPresent([String].self, forKey: .listen_addrs)
        online = try values.decodeIfPresent(String.self, forKey: .online)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
    }
}

public struct WitnessedForAHotspotGeocodeResponse: Codable {
    public let city_id: String?
    public let long_city: String?
    public let long_country: String?
    public let long_state: String?
    public let long_street: String?
    public let short_city: String?
    public let short_country: String?
    public let short_state: String?
    public let short_street: String?

    enum CodingKeys: String, CodingKey {
        case city_id
        case long_city
        case long_country
        case long_state
        case long_street
        case short_city
        case short_country
        case short_state
        case short_street
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
        long_city = try values.decodeIfPresent(String.self, forKey: .long_city)
        long_country = try values.decodeIfPresent(String.self, forKey: .long_country)
        long_state = try values.decodeIfPresent(String.self, forKey: .long_state)
        long_street = try values.decodeIfPresent(String.self, forKey: .long_street)
        short_city = try values.decodeIfPresent(String.self, forKey: .short_city)
        short_country = try values.decodeIfPresent(String.self, forKey: .short_country)
        short_state = try values.decodeIfPresent(String.self, forKey: .short_state)
        short_street = try values.decodeIfPresent(String.self, forKey: .short_street)
    }
}
