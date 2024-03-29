//
//  RewardTotalForAHotspotResponse.swift
//

public struct RewardTotalForAHotspotResponse: Codable {
    public let data: RewardTotalForAHotspotDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(RewardTotalForAHotspotDataResponse.self, forKey: .data)
    }
}

public struct RewardTotalForAHotspotDataResponse: Codable {
    public let max_time: String?
    public let min_time: String?
    public let sum: String?

    enum CodingKeys: String, CodingKey {
        case max_time
        case min_time
        case sum
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        max_time = try values.decodeIfPresent(String.self, forKey: .max_time)
        min_time = try values.decodeIfPresent(String.self, forKey: .min_time)
        sum = try values.decodeIfPresent(String.self, forKey: .sum)
    }
}
