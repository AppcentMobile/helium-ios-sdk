//
//  GetTheValueOfAchainVariableResponse.swift
//

public struct GetTheValueOfAchainVariableResponse: Codable {
    public let data: Int?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(Int.self, forKey: .data)
    }
}
