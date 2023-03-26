//
//  BlocksStatsResponse.swift
//

public struct BlocksStatsResponse: Codable {
    public let data: BlocksStatsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(BlocksStatsDataResponse.self, forKey: .data)
    }
}

public struct BlocksStatsDataResponse: Codable {
    public let last_day: BlocksStatsDateFilterResponse?
    public let last_hour: BlocksStatsDateFilterResponse?
    public let last_month: BlocksStatsDateFilterResponse?
    public let last_week: BlocksStatsDateFilterResponse?

    enum CodingKeys: String, CodingKey {
        case last_day
        case last_hour
        case last_month
        case last_week
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        last_day = try values.decodeIfPresent(BlocksStatsDateFilterResponse.self, forKey: .last_day)
        last_hour = try values.decodeIfPresent(BlocksStatsDateFilterResponse.self, forKey: .last_hour)
        last_month = try values.decodeIfPresent(BlocksStatsDateFilterResponse.self, forKey: .last_month)
        last_week = try values.decodeIfPresent(BlocksStatsDateFilterResponse.self, forKey: .last_week)
    }
}

public struct BlocksStatsDateFilterResponse: Codable {
    public let avg: Double?
    public let stddev: Double?

    enum CodingKeys: String, CodingKey {
        case avg
        case stddev
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avg = try values.decodeIfPresent(Double.self, forKey: .avg)
        stddev = try values.decodeIfPresent(Double.self, forKey: .stddev)
    }
}
