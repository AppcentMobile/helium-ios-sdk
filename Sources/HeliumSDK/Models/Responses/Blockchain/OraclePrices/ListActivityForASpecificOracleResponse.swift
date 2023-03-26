//
//  ListActivityForASpecificOracleResponse.swift
//

public struct ListActivityForASpecificOracleResponse: Codable {
    public let cursor: String?
    public let data: [ListActivityForASpecificOracleDataResponse]?

    enum CodingKeys: String, CodingKey {
        case cursor
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
        data = try values.decodeIfPresent([ListActivityForASpecificOracleDataResponse].self, forKey: .data)
    }
}

public struct ListActivityForASpecificOracleDataResponse: Codable {
    public let block_height: Int?
    public let fee: Int?
    public let hash: String?
    public let height: Int?
    public let price: Int?
    public let public_key: String?
    public let time: Int?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case block_height
        case fee
        case hash
        case height
        case price
        case public_key
        case time
        case type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        block_height = try values.decodeIfPresent(Int.self, forKey: .block_height)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        public_key = try values.decodeIfPresent(String.self, forKey: .public_key)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}
