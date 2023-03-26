//
//  RewardsForAnAccountResponse.swift
//


public struct RewardsForAnAccountResponse: Codable {
    public let data: RewardsForAnAccountDataResponse?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(RewardsForAnAccountDataResponse.self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct RewardsForAnAccountDataResponse: Codable {
    public let type: String?
    public let timestamp: String?
    public let hash: String?
    public let gateway: String?
    public let block: Int?
    public let amount: Int?
    public let account: String?

    enum CodingKeys: String, CodingKey {
        case type
        case timestamp
        case hash
        case gateway
        case block
        case amount
        case account
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
        account = try values.decodeIfPresent(String.self, forKey: .account)
    }
}
