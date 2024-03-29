//
//  OraclePriceAtASpecificBlockResponse.swift
//

public struct OraclePriceAtASpecificBlockResponse: Codable {
    public let data: OraclePriceAtASpecificBlockDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(OraclePriceAtASpecificBlockDataResponse.self, forKey: .data)
    }
}

public struct OraclePriceAtASpecificBlockDataResponse: Codable {
    public let price: Int?
    public let block: Int?

    enum CodingKeys: String, CodingKey {
        case price
        case block
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
    }
}
