//
//  CurrentlyElectedHotspotsResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//



public struct CurrentlyElectedHotspotsResponse : Codable {
    public let data : [CurrentlyElectedHotspotsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([CurrentlyElectedHotspotsDataResponse].self, forKey: .data)
    }
}

public struct CurrentlyElectedHotspotsDataResponse : Codable {
    let lng : Double?
    let lat : Double?
    let status : CurrentlyElectedHotspotsStatusResponse?
    let score_update_height : Int?
    let score : Double?
    let owner : String?
    let nonce : Int?
    let name : String?
    let location : String?
    let geocode : CurrentlyElectedHotspotsGeocodeResponse?
    let block_added : Int?
    let block : Int?
    let address : String?

    enum CodingKeys: String, CodingKey {
        case lng = "lng"
        case lat = "lat"
        case status = "status"
        case score_update_height = "score_update_height"
        case score = "score"
        case owner = "owner"
        case nonce = "nonce"
        case name = "name"
        case location = "location"
        case geocode = "geocode"
        case block_added = "block_added"
        case block = "block"
        case address = "address"
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

public struct CurrentlyElectedHotspotsGeocodeResponse : Codable {
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

public struct CurrentlyElectedHotspotsStatusResponse: Codable {
    public let online : String?
    public let height : Int?

    enum CodingKeys: String, CodingKey {
        case online = "online"
        case height = "height"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        online = try values.decodeIfPresent(String.self, forKey: .online)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
}
