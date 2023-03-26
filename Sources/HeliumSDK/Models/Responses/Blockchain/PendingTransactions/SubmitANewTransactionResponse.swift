//
//  SubmitANewTransactionResponse.swift
//

public struct SubmitANewTransactionResponse: Codable {
    public let data: SubmitANewTransactionDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(SubmitANewTransactionDataResponse.self, forKey: .data)
    }
}

public struct SubmitANewTransactionDataResponse: Codable {
    public let hash: String?

    enum CodingKeys: String, CodingKey {
        case hash
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
    }
}
