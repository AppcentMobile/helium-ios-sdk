//
//  GetOUIStatsResponse.swift
//

public struct GetOUIStatsResponse: Codable {
    public let data: GetOUIStatsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(GetOUIStatsDataResponse.self, forKey: .data)
    }
}

public struct GetOUIStatsDataResponse: Codable {
    public let count: Int?

    enum CodingKeys: String, CodingKey {
        case count
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        count = try values.decodeIfPresent(Int.self, forKey: .count)
    }
}
