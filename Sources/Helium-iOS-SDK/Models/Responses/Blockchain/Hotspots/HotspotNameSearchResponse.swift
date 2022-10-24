//
//  HotspotNameSearchResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

public struct HotspotNameSearchResponse: Codable {
    public let data : [HotspotNameSearchDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([HotspotNameSearchDataResponse].self, forKey: .data)
    }
}

public struct HotspotNameSearchDataResponse : Codable {
    public let address : String?
    public let block : Int?
    public let block_added : Int?
    public let geocode : HotspotNameSearchGeocodeResponse?
    public let last_change_block : Int?
    public let last_poc_challenge : String?
    public let lat : Double?
    public let lng : Double?
    public let location : String?
    public let name : String?
    public let nonce : Int?
    public let owner : String?
    public let reward_scale : Double?
    public let status : HotspotNameSearchStatusResponse?
    public let timestamp_added : String?

    enum CodingKeys: String, CodingKey {
        case address = "address"
        case block = "block"
        case block_added = "block_added"
        case geocode = "geocode"
        case last_change_block = "last_change_block"
        case last_poc_challenge = "last_poc_challenge"
        case lat = "lat"
        case lng = "lng"
        case location = "location"
        case name = "name"
        case nonce = "nonce"
        case owner = "owner"
        case reward_scale = "reward_scale"
        case status = "status"
        case timestamp_added = "timestamp_added"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        geocode = try values.decodeIfPresent(HotspotNameSearchGeocodeResponse.self, forKey: .geocode)
        last_change_block = try values.decodeIfPresent(Int.self, forKey: .last_change_block)
        last_poc_challenge = try values.decodeIfPresent(String.self, forKey: .last_poc_challenge)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        reward_scale = try values.decodeIfPresent(Double.self, forKey: .reward_scale)
        status = try values.decodeIfPresent(HotspotNameSearchStatusResponse.self, forKey: .status)
        timestamp_added = try values.decodeIfPresent(String.self, forKey: .timestamp_added)
    }
}

public struct HotspotNameSearchGeocodeResponse : Codable {
    public let city_id : String?
    public let long_city : String?
    public let long_country : String?
    public let long_state : String?
    public let long_street : String?
    public let short_city : String?
    public let short_country : String?
    public let short_state : String?
    public let short_street : String?

    enum CodingKeys: String, CodingKey {
        case city_id = "city_id"
        case long_city = "long_city"
        case long_country = "long_country"
        case long_state = "long_state"
        case long_street = "long_street"
        case short_city = "short_city"
        case short_country = "short_country"
        case short_state = "short_state"
        case short_street = "short_street"
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

public struct HotspotNameSearchStatusResponse : Codable {
    public let height : Int?
    public let listen_addrs : String?
    public let online : String?

    enum CodingKeys: String, CodingKey {
        case height = "height"
        case listen_addrs = "listen_addrs"
        case online = "online"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        listen_addrs = try values.decodeIfPresent(String.self, forKey: .listen_addrs)
        online = try values.decodeIfPresent(String.self, forKey: .online)
    }
}
