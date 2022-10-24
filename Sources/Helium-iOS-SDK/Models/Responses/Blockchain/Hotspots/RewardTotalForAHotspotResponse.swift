//
//  RewardTotalForAHotspotResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct RewardTotalForAHotspotResponse : Codable {
    public let data : RewardTotalForAHotspotDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(RewardTotalForAHotspotDataResponse.self, forKey: .data)
    }
}

public struct RewardTotalForAHotspotDataResponse : Codable {
    public let max_time : String?
    public let min_time : String?
    public let sum : String?

    enum CodingKeys: String, CodingKey {
        case max_time = "max_time"
        case min_time = "min_time"
        case sum = "sum"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        max_time = try values.decodeIfPresent(String.self, forKey: .max_time)
        min_time = try values.decodeIfPresent(String.self, forKey: .min_time)
        sum = try values.decodeIfPresent(String.self, forKey: .sum)
    }
}
