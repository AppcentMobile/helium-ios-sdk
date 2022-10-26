//
//  ListHotspotCitiesResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

public struct ListHotspotCitiesResponse: Codable {
    public let data: [ListHotspotCitiesDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListHotspotCitiesDataResponse].self, forKey: .data)
    }
}

public struct ListHotspotCitiesDataResponse: Codable {
    public let city_id : String?
    public let hotspot_count : Int?
    public let long_city : String?
    public let long_country : String?
    public let long_state : String?
    public let short_city : String?
    public let short_country : String?
    public let short_state : String?

    enum CodingKeys: String, CodingKey {
        case city_id = "city_id"
        case hotspot_count = "hotspot_count"
        case long_city = "long_city"
        case long_country = "long_country"
        case long_state = "long_state"
        case short_city = "short_city"
        case short_country = "short_country"
        case short_state = "short_state"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
        hotspot_count = try values.decodeIfPresent(Int.self, forKey: .hotspot_count)
        long_city = try values.decodeIfPresent(String.self, forKey: .long_city)
        long_country = try values.decodeIfPresent(String.self, forKey: .long_country)
        long_state = try values.decodeIfPresent(String.self, forKey: .long_state)
        short_city = try values.decodeIfPresent(String.self, forKey: .short_city)
        short_country = try values.decodeIfPresent(String.self, forKey: .short_country)
        short_state = try values.decodeIfPresent(String.self, forKey: .short_state)
    }
}
