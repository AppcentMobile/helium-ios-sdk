//
//  CityForCityIDResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

public struct CityForCityIDResponse: Codable {
    public let data: CityForCityIDDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(CityForCityIDDataResponse.self, forKey: .data)
    }
}

public struct CityForCityIDDataResponse: Codable {
    public let short_state : String?
    public let short_country : String?
    public let short_city : String?
    public let online_count : Int?
    public let offline_count : Int?
    public let long_state : String?
    public let long_country : String?
    public let long_city : String?
    public let hotspot_count : Int?
    public let city_id : String?

    enum CodingKeys: String, CodingKey {
        case short_state = "short_state"
        case short_country = "short_country"
        case short_city = "short_city"
        case online_count = "online_count"
        case offline_count = "offline_count"
        case long_state = "long_state"
        case long_country = "long_country"
        case long_city = "long_city"
        case hotspot_count = "hotspot_count"
        case city_id = "city_id"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        short_state = try values.decodeIfPresent(String.self, forKey: .short_state)
        short_country = try values.decodeIfPresent(String.self, forKey: .short_country)
        short_city = try values.decodeIfPresent(String.self, forKey: .short_city)
        online_count = try values.decodeIfPresent(Int.self, forKey: .online_count)
        offline_count = try values.decodeIfPresent(Int.self, forKey: .offline_count)
        long_state = try values.decodeIfPresent(String.self, forKey: .long_state)
        long_country = try values.decodeIfPresent(String.self, forKey: .long_country)
        long_city = try values.decodeIfPresent(String.self, forKey: .long_city)
        hotspot_count = try values.decodeIfPresent(Int.self, forKey: .hotspot_count)
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
    }
}
