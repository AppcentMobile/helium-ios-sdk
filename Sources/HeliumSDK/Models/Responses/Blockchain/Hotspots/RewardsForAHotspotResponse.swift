//
//  RewardsForAHotspotResponse.swift
//

public struct RewardsForAHotspotResponse: Codable {
    public let data: [RewardsForAHotspotDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([RewardsForAHotspotDataResponse].self, forKey: .data)
    }
}

public struct RewardsForAHotspotDataResponse: Codable {
    public let account: String?
    public let amount: Int?
    public let block: Int?
    public let gateway: String?
    public let hash: String?
    public let timestamp: String?

    enum CodingKeys: String, CodingKey {
        case account
        case amount
        case block
        case gateway
        case hash
        case timestamp
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
