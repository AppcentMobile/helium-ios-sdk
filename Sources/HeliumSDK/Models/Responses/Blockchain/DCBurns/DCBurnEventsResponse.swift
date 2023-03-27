//
//  DCBurnEventsResponse.swift
//

public struct DCBurnEventsResponse: Codable {
    public let cursor: String?
    public let data: [DCBurnEventsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case cursor
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
        data = try values.decodeIfPresent([DCBurnEventsDataResponse].self, forKey: .data)
    }
}

public struct DCBurnEventsDataResponse: Codable {
    public let address: String?
    public let amount: Int?
    public let block: Int?
    public let oracle_price: Int?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case address
        case amount
        case block
        case oracle_price
        case type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        oracle_price = try values.decodeIfPresent(Int.self, forKey: .oracle_price)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}
