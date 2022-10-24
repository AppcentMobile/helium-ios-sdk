//
//  SubmitANewTransactionResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//



public struct SubmitANewTransactionResponse : Codable {
    public let data : SubmitANewTransactionDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(SubmitANewTransactionDataResponse.self, forKey: .data)
    }
}

public struct SubmitANewTransactionDataResponse : Codable {
    public let hash : String?

    enum CodingKeys: String, CodingKey {
        case hash = "hash"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
    }
}
