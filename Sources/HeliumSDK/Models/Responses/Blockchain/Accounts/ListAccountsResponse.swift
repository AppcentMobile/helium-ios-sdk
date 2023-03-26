//
//  ListAccountsResponse.swift
//


public struct ListAccountsResponse: Codable {
    public let data: [ListAccountsDataResponse]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListAccountsDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct ListAccountsDataResponse: Codable {
    public let sec_nonce: Int?
    public let sec_balance: Int?
    public let nonce: Int?
    public let dc_nonce: Int?
    public let dc_balance: Int?
    public let block: Int?
    public let balance: Int?
    public let address: String?

    enum CodingKeys: String, CodingKey {
        case sec_nonce
        case sec_balance
        case nonce
        case dc_nonce
        case dc_balance
        case block
        case balance
        case address
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        sec_nonce = try values.decodeIfPresent(Int.self, forKey: .sec_nonce)
        sec_balance = try values.decodeIfPresent(Int.self, forKey: .sec_balance)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        dc_nonce = try values.decodeIfPresent(Int.self, forKey: .dc_nonce)
        dc_balance = try values.decodeIfPresent(Int.self, forKey: .dc_balance)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        balance = try values.decodeIfPresent(Int.self, forKey: .balance)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}
