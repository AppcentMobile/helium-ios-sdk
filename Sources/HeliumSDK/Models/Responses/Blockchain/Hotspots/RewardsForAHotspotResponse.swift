//
//  RewardsForAHotspotResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct RewardsForAHotspotResponse : Codable {
    public let data : [RewardsForAHotspotDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([RewardsForAHotspotDataResponse].self, forKey: .data)
    }
}

public struct RewardsForAHotspotDataResponse : Codable {
    public let account : String?
    public let amount : Int?
    public let block : Int?
    public let gateway : String?
    public let hash : String?
    public let timestamp : String?

    enum CodingKeys: String, CodingKey {
        case account = "account"
        case amount = "amount"
        case block = "block"
        case gateway = "gateway"
        case hash = "hash"
        case timestamp = "timestamp"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        account = try values.decodeIfPresent(String.self, forKey: .account)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
    }
}
