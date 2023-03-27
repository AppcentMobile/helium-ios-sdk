//
//  DCBurnStatsResponse.swift
//

public struct DCBurnStatsResponse: Codable {
    public let data: DCBurnStatsDataResponse?
    public let meta: DCBurnStatsMetaResponse?

    enum CodingKeys: String, CodingKey {
        case data
        case meta
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(DCBurnStatsDataResponse.self, forKey: .data)
        meta = try values.decodeIfPresent(DCBurnStatsMetaResponse.self, forKey: .meta)
    }
}

public struct DCBurnStatsDataResponse: Codable {
    public let last_day: DCBurnStatsFilterDateResponse?
    public let last_month: DCBurnStatsFilterDateResponse?
    public let last_week: DCBurnStatsFilterDateResponse?

    enum CodingKeys: String, CodingKey {
        case last_day
        case last_month
        case last_week
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        last_day = try values.decodeIfPresent(DCBurnStatsFilterDateResponse.self, forKey: .last_day)
        last_month = try values.decodeIfPresent(DCBurnStatsFilterDateResponse.self, forKey: .last_month)
        last_week = try values.decodeIfPresent(DCBurnStatsFilterDateResponse.self, forKey: .last_week)
    }
}

public struct DCBurnStatsFilterDateResponse: Codable {
    public let add_gateway: Int?
    public let assert_location: Int?
    public let fee: Int?
    public let state_channel: Int?
    public let total: Int?

    enum CodingKeys: String, CodingKey {
        case add_gateway
        case assert_location
        case fee
        case state_channel
        case total
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        add_gateway = try values.decodeIfPresent(Int.self, forKey: .add_gateway)
        assert_location = try values.decodeIfPresent(Int.self, forKey: .assert_location)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        state_channel = try values.decodeIfPresent(Int.self, forKey: .state_channel)
        total = try values.decodeIfPresent(Int.self, forKey: .total)
    }
}

public struct DCBurnStatsMetaResponse: Codable {
    public let timestamp: String?

    enum CodingKeys: String, CodingKey {
        case timestamp
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
    }
}
