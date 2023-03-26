//
//  DataCreditBalanceResponse.swift
//


public struct DataCreditBalanceResponse: Codable {
    public let dc_balance: Int?
    public let id: String?
    public let name: String?

    enum CodingKeys: String, CodingKey {
        case dc_balance
        case id
        case name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dc_balance = try values.decodeIfPresent(Int.self, forKey: .dc_balance)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
