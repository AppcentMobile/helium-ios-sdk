//
//  CurrentAndHistoricalOraclePricesResponse.swift
//

public struct CurrentAndHistoricalOraclePricesResponse: Codable {
    public let data: [CurrentAndHistoricalOraclePricesDataResponse]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([CurrentAndHistoricalOraclePricesDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct CurrentAndHistoricalOraclePricesDataResponse: Codable {
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
