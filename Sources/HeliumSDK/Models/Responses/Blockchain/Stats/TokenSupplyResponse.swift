//
//  TokenSupplyResponse.swift
//

public struct TokenSupplyResponse: Codable {
    public let data: TokenSupplyDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(TokenSupplyDataResponse.self, forKey: .data)
    }
}

public struct TokenSupplyDataResponse: Codable {
    public let token_supply: Double?

    enum CodingKeys: String, CodingKey {
        case token_supply
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        token_supply = try values.decodeIfPresent(Double.self, forKey: .token_supply)
    }
}
