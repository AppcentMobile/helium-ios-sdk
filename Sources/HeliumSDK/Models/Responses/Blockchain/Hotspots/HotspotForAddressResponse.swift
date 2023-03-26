//
//  HotspotForAddressResponse.swift
//


public struct HotspotForAddressResponse: Codable {
    public let data: HotspotForAddressDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(HotspotForAddressDataResponse.self, forKey: .data)
    }
}

public struct HotspotForAddressDataResponse: Codable {
    public let address: String?
    public let block: Int?
    public let block_added: Int?
    public let geocode: HotspotForAddressGeocodeResponse?
    public let lat: Double?
    public let lng: Double?
    public let location: String?
    public let name: String?
    public let nonce: Int?
    public let owner: String?
    public let reward_scale: Double?
    public let status: HotspotForAddressStatusResponse?

    enum CodingKeys: String, CodingKey {
        case address
        case block
        case block_added
        case geocode
        case lat
        case lng
        case location
        case name
        case nonce
        case owner
        case reward_scale
        case status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        geocode = try values.decodeIfPresent(HotspotForAddressGeocodeResponse.self, forKey: .geocode)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        reward_scale = try values.decodeIfPresent(Double.self, forKey: .reward_scale)
        status = try values.decodeIfPresent(HotspotForAddressStatusResponse.self, forKey: .status)
    }
}

public struct HotspotForAddressStatusResponse: Codable {
    public let height: Int?
    public let online: String?

    enum CodingKeys: String, CodingKey {
        case height
        case online
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        online = try values.decodeIfPresent(String.self, forKey: .online)
    }
}

public struct HotspotForAddressGeocodeResponse: Codable {
    public let long_city: String?
    public let long_country: String?
    public let long_state: String?
    public let long_street: String?
    public let short_city: String?
    public let short_country: String?
    public let short_state: String?
    public let short_street: String?
    public let city_id: String?

    enum CodingKeys: String, CodingKey {
        case long_city
        case long_country
        case long_state
        case long_street
        case short_city
        case short_country
        case short_state
        case short_street
        case city_id
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        long_city = try values.decodeIfPresent(String.self, forKey: .long_city)
        long_country = try values.decodeIfPresent(String.self, forKey: .long_country)
        long_state = try values.decodeIfPresent(String.self, forKey: .long_state)
        long_street = try values.decodeIfPresent(String.self, forKey: .long_street)
        short_city = try values.decodeIfPresent(String.self, forKey: .short_city)
        short_country = try values.decodeIfPresent(String.self, forKey: .short_country)
        short_state = try values.decodeIfPresent(String.self, forKey: .short_state)
        short_street = try values.decodeIfPresent(String.self, forKey: .short_street)
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
    }
}
