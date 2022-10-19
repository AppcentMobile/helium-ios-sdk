//
//  ListHotspotsResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

import UIKit

public struct ListHotspotsResponse: Codable {
    public let data : [ListHotspotsDataResponse]?
    public let cursor : String?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case cursor = "cursor"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListHotspotsDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct ListHotspotsDataResponse: Codable {
    public let lng : Double?
    public let lat : Double?
    public let status : ListHotspotsStatusResponse?
    public let score_update_height : Int?
    public let score : Double?
    public let owner : String?
    public let nonce : Int?
    public let name : String?
    public let location : String?
    public let geocode : ListHotspotsGeocodeResponse?
    public let block_added : Int?
    public let block : Int?
    public let address : String?

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
        status = try values.decodeIfPresent(ListHotspotsStatusResponse.self, forKey: .status)
        score_update_height = try values.decodeIfPresent(Int.self, forKey: .score_update_height)
        score = try values.decodeIfPresent(Double.self, forKey: .score)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        geocode = try values.decodeIfPresent(ListHotspotsGeocodeResponse.self, forKey: .geocode)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}

public struct ListHotspotsStatusResponse: Codable {
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

public struct ListHotspotsGeocodeResponse: Codable {
    let short_street : String?
    let short_state : String?
    let short_country : String?
    let short_city : String?
    let long_street : String?
    let long_state : String?
    let long_country : String?
    let long_city : String?
    let city_id : String?

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
