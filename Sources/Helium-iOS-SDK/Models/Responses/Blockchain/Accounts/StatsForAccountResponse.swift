//
//  StatsForAccountResponse.swift
//  
//
//  Created by Burak Colak on 17.10.2022.
//



public struct StatsForAccountResponse : Codable {
    public let data : [StatsForAccountDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([StatsForAccountDataResponse].self, forKey: .data)
    }
}

public struct StatsForAccountDataResponse : Codable {
    public let last_week : [StatsForAccountLastFilterResponse]?
    public let last_month : [StatsForAccountLastFilterResponse]?
    public let last_day : [StatsForAccountLastFilterResponse]?

    enum CodingKeys: String, CodingKey {
        case last_week = "last_week"
        case last_month = "last_month"
        case last_day = "last_day"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        last_week = try values.decodeIfPresent([StatsForAccountLastFilterResponse].self, forKey: .last_week)
        last_month = try values.decodeIfPresent([StatsForAccountLastFilterResponse].self, forKey: .last_month)
        last_day = try values.decodeIfPresent([StatsForAccountLastFilterResponse].self, forKey: .last_day)
    }
}

public struct StatsForAccountLastFilterResponse: Codable {
    public let timestamp : String?
    public let balance : Int?

    enum CodingKeys: String, CodingKey {
        case timestamp = "timestamp"
        case balance = "balance"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        balance = try values.decodeIfPresent(Int.self, forKey: .balance)
    }
}
