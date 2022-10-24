//
//  SearchForAnIntegrationByUUIDResponse.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

public struct SearchForAnIntegrationByUUIDResponse: Codable {
    public let id : String?
    public let name : String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
