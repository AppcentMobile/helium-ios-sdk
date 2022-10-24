//
//  ListRichestAccountsResponse.swift
//  
//
//  Created by Burak Colak on 17.10.2022.
//



public struct ListRichestAccountsResponse : Codable {
    public let data : [ListAccountsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListAccountsDataResponse].self, forKey: .data)
    }
}
