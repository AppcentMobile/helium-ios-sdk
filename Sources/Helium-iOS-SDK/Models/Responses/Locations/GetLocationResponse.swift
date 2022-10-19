//
//  GetLocationResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

public struct GetLocationResponse : Codable {
    public let data: GetLocationDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(GetLocationDataResponse.self, forKey: .data)
    }
}

public struct GetLocationDataResponse : Codable {
    public let city_id : String?
    public let location : String?
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
        case location = "location"
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
        location = try values.decodeIfPresent(String.self, forKey: .location)
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
