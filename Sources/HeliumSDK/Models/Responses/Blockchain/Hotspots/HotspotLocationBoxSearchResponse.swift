//
//  HotspotLocationBoxSearchResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

public struct HotspotLocationBoxSearchResponse : Codable {
    public let data : [HotspotLocationBoxSearchDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([HotspotLocationBoxSearchDataResponse].self, forKey: .data)
    }
}

public struct HotspotLocationBoxSearchDataResponse: Codable {
    public let lng : Double?
    public let lat : Double?
    public let timestamp_added : String?
    public let status : HotspotLocationBoxSearchStatusResponse?
    public let reward_scale : Int?
    public let owner : String?
    public let nonce : Int?
    public let name : String?
    public let location : String?
    public let last_poc_challenge : Int?
    public let last_change_block : Int?
    public let geocode : HotspotLocationBoxSearchGeocodeResponse?
    public let block_added : Int?
    public let block : Int?
    public let address : String?

    enum CodingKeys: String, CodingKey {
        case lng = "lng"
        case lat = "lat"
        case timestamp_added = "timestamp_added"
        case status = "status"
        case reward_scale = "reward_scale"
        case owner = "owner"
        case nonce = "nonce"
        case name = "name"
        case location = "location"
        case last_poc_challenge = "last_poc_challenge"
        case last_change_block = "last_change_block"
        case geocode = "geocode"
        case block_added = "block_added"
        case block = "block"
        case address = "address"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        timestamp_added = try values.decodeIfPresent(String.self, forKey: .timestamp_added)
        status = try values.decodeIfPresent(HotspotLocationBoxSearchStatusResponse.self, forKey: .status)
        reward_scale = try values.decodeIfPresent(Int.self, forKey: .reward_scale)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        last_poc_challenge = try values.decodeIfPresent(Int.self, forKey: .last_poc_challenge)
        last_change_block = try values.decodeIfPresent(Int.self, forKey: .last_change_block)
        geocode = try values.decodeIfPresent(HotspotLocationBoxSearchGeocodeResponse.self, forKey: .geocode)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}

public struct HotspotLocationBoxSearchStatusResponse : Codable {
    public let online : String?
    public let listen_addrs : [String]?
    public let height : Int?

    enum CodingKeys: String, CodingKey {
        case online = "online"
        case listen_addrs = "listen_addrs"
        case height = "height"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        online = try values.decodeIfPresent(String.self, forKey: .online)
        listen_addrs = try values.decodeIfPresent([String].self, forKey: .listen_addrs)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
}

public struct HotspotLocationBoxSearchGeocodeResponse : Codable {
    public let short_street : String?
    public let short_state : String?
    public let short_country : String?
    public let short_city : String?
    public let long_street : String?
    public let long_state : String?
    public let long_country : String?
    public let long_city : String?
    public let city_id : String?

    enum CodingKeys: String, CodingKey {
        case short_street = "short_street"
        case short_state = "short_state"
        case short_country = "short_country"
        case short_city = "short_city"
        case long_street = "long_street"
        case long_state = "long_state"
        case long_country = "long_country"
        case long_city = "long_city"
        case city_id = "city_id"
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
