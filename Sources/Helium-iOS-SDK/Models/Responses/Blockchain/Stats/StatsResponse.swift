//
//  StatsResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//



public struct StatsResponse: Codable {
    public let data : StatsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(StatsDataResponse.self, forKey: .data)
    }
}

public struct StatsDataResponse: Codable {
    public let block_times : StatsBlockTimesResponse?
    public let challenge_counts : StatsChallengeCountsResponse?
    public let counts : StatsCountsResponse?
    public let election_times : StatsElectionTimesResponse?
    public let token_supply : Double?

    enum CodingKeys: String, CodingKey {
        case block_times = "block_times"
        case challenge_counts = "challenge_counts"
        case counts = "counts"
        case election_times = "election_times"
        case token_supply = "token_supply"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        block_times = try values.decodeIfPresent(StatsBlockTimesResponse.self, forKey: .block_times)
        challenge_counts = try values.decodeIfPresent(StatsChallengeCountsResponse.self, forKey: .challenge_counts)
        counts = try values.decodeIfPresent(StatsCountsResponse.self, forKey: .counts)
        election_times = try values.decodeIfPresent(StatsElectionTimesResponse.self, forKey: .election_times)
        token_supply = try values.decodeIfPresent(Double.self, forKey: .token_supply)
    }
}

public struct StatsBlockTimesResponse : Codable {
    public let last_day : StatsFilterDateResponse?
    public let last_hour : StatsFilterDateResponse?
    public let last_month : StatsFilterDateResponse?
    public let last_week : StatsFilterDateResponse?

    enum CodingKeys: String, CodingKey {
        case last_day = "last_day"
        case last_hour = "last_hour"
        case last_month = "last_month"
        case last_week = "last_week"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        last_day = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_day)
        last_hour = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_hour)
        last_month = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_month)
        last_week = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_week)
    }
}

public struct StatsChallengeCountsResponse : Codable {
    public let active : Int?
    public let last_day : Int?

    enum CodingKeys: String, CodingKey {
        case active = "active"
        case last_day = "last_day"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        active = try values.decodeIfPresent(Int.self, forKey: .active)
        last_day = try values.decodeIfPresent(Int.self, forKey: .last_day)
    }
}

public struct StatsCountsResponse : Codable {
    public let validators : Int?
    public let ouis : Int?
    public let hotspots_dataonly : Int?
    public let blocks : Int?
    public let challenges : Int?
    public let cities : Int?
    public let consensus_groups : Int?
    public let countries : Int?
    public let hotspots : Int?
    public let transactions : Int?

    enum CodingKeys: String, CodingKey {
        case validators = "validators"
        case ouis = "ouis"
        case hotspots_dataonly = "hotspots_dataonly"
        case blocks = "blocks"
        case challenges = "challenges"
        case cities = "cities"
        case consensus_groups = "consensus_groups"
        case countries = "countries"
        case hotspots = "hotspots"
        case transactions = "transactions"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        validators = try values.decodeIfPresent(Int.self, forKey: .validators)
        ouis = try values.decodeIfPresent(Int.self, forKey: .ouis)
        hotspots_dataonly = try values.decodeIfPresent(Int.self, forKey: .hotspots_dataonly)
        blocks = try values.decodeIfPresent(Int.self, forKey: .blocks)
        challenges = try values.decodeIfPresent(Int.self, forKey: .challenges)
        cities = try values.decodeIfPresent(Int.self, forKey: .cities)
        consensus_groups = try values.decodeIfPresent(Int.self, forKey: .consensus_groups)
        countries = try values.decodeIfPresent(Int.self, forKey: .countries)
        hotspots = try values.decodeIfPresent(Int.self, forKey: .hotspots)
        transactions = try values.decodeIfPresent(Int.self, forKey: .transactions)
    }
}

public struct StatsFilterDateResponse : Codable {
    public let avg : Double?
    public let stddev : Double?

    enum CodingKeys: String, CodingKey {
        case avg = "avg"
        case stddev = "stddev"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avg = try values.decodeIfPresent(Double.self, forKey: .avg)
        stddev = try values.decodeIfPresent(Double.self, forKey: .stddev)
    }
}

public struct StatsElectionTimesResponse : Codable {
    public let last_day : StatsFilterDateResponse?
    public let last_hour : StatsFilterDateResponse?
    public let last_month : StatsFilterDateResponse?
    public let last_week : StatsFilterDateResponse?

    enum CodingKeys: String, CodingKey {
        case last_day = "last_day"
        case last_hour = "last_hour"
        case last_month = "last_month"
        case last_week = "last_week"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        last_day = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_day)
        last_hour = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_hour)
        last_month = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_month)
        last_week = try values.decodeIfPresent(StatsFilterDateResponse.self, forKey: .last_week)
    }
}
