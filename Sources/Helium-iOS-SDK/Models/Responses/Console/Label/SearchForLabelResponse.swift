//
//  SearchForLabelResponse.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//



public struct SearchForLabelResponse : Codable {
    public let id : String?
    public let multi_buy : Int?
    public let name : String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case multi_buy = "multi_buy"
        case name = "name"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        multi_buy = try values.decodeIfPresent(Int.self, forKey: .multi_buy)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
