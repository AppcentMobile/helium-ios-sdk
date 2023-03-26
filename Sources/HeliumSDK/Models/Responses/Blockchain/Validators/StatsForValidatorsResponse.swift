//
//  StatsForValidatorsResponse.swift
//


public struct StatsForValidatorsResponse: Codable {
    public let data: StatsForValidatorsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(StatsForValidatorsDataResponse.self, forKey: .data)
    }
}

public struct StatsForValidatorsDataResponse: Codable {
    public let active: Int?
    public let cooldown: StatsForValidatorsCooldownResponse?
    public let staked: StatsForValidatorsStakeResponse?
    public let unstaked: StatsForValidatorsStakeResponse?

    enum CodingKeys: String, CodingKey {
        case active
        case cooldown
        case staked
        case unstaked
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        active = try values.decodeIfPresent(Int.self, forKey: .active)
        cooldown = try values.decodeIfPresent(StatsForValidatorsCooldownResponse.self, forKey: .cooldown)
        staked = try values.decodeIfPresent(StatsForValidatorsStakeResponse.self, forKey: .staked)
        unstaked = try values.decodeIfPresent(StatsForValidatorsStakeResponse.self, forKey: .unstaked)
    }
}

public struct StatsForValidatorsCooldownResponse: Codable {
    public let amount: Int?
    public let count: Int?

    enum CodingKeys: String, CodingKey {
        case amount
        case count
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
        count = try values.decodeIfPresent(Int.self, forKey: .count)
    }
}

public struct StatsForValidatorsStakeResponse: Codable {
    public let amount: Double?
    public let count: Int?

    enum CodingKeys: String, CodingKey {
        case amount
        case count
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        amount = try values.decodeIfPresent(Double.self, forKey: .amount)
        count = try values.decodeIfPresent(Int.self, forKey: .count)
    }
}
