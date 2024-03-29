//
//  CurrentlyElectedHotspotsResponse.swift
//

public struct CurrentlyElectedHotspotsResponse: Codable {
    public let data: [CurrentlyElectedHotspotsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([CurrentlyElectedHotspotsDataResponse].self, forKey: .data)
    }
}

public struct CurrentlyElectedHotspotsDataResponse: Codable {
    public let lng: Double?
    public let lat: Double?
    public let status: CurrentlyElectedHotspotsStatusResponse?
    public let score_update_height: Int?
    public let score: Double?
    public let owner: String?
    public let nonce: Int?
    public let name: String?
    public let location: String?
    public let geocode: CurrentlyElectedHotspotsGeocodeResponse?
    public let block_added: Int?
    public let block: Int?
    public let address: String?

    enum CodingKeys: String, CodingKey {
        case lng
        case lat
        case status
        case score_update_height
        case score
        case owner
        case nonce
        case name
        case location
        case geocode
        case block_added
        case block
        case address
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        status = try values.decodeIfPresent(CurrentlyElectedHotspotsStatusResponse.self, forKey: .status)
        score_update_height = try values.decodeIfPresent(Int.self, forKey: .score_update_height)
        score = try values.decodeIfPresent(Double.self, forKey: .score)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        geocode = try values.decodeIfPresent(CurrentlyElectedHotspotsGeocodeResponse.self, forKey: .geocode)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}

public struct CurrentlyElectedHotspotsGeocodeResponse: Codable {
    public let short_street: String?
    public let short_state: String?
    public let short_country: String?
    public let short_city: String?
    public let long_street: String?
    public let long_state: String?
    public let long_country: String?
    public let long_city: String?
    public let city_id: String?

    enum CodingKeys: String, CodingKey {
        case short_street
        case short_state
        case short_country
        case short_city
        case long_street
        case long_state
        case long_country
        case long_city
        case city_id
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        short_street = try values.decodeIfPresent(String.self, forKey: .short_street)
        short_state = try values.decodeIfPresent(String.self, forKey: .short_state)
        short_country = try values.decodeIfPresent(String.self, forKey: .short_country)
        short_city = try values.decodeIfPresent(String.self, forKey: .short_city)
        long_street = try values.decodeIfPresent(String.self, forKey: .long_street)
        long_state = try values.decodeIfPresent(String.self, forKey: .long_state)
        long_country = try values.decodeIfPresent(String.self, forKey: .long_country)
        long_city = try values.decodeIfPresent(String.self, forKey: .long_city)
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
    }
}

public struct CurrentlyElectedHotspotsStatusResponse: Codable {
    public let online: String?
    public let height: Int?

    enum CodingKeys: String, CodingKey {
        case online
        case height
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        online = try values.decodeIfPresent(String.self, forKey: .online)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
}
