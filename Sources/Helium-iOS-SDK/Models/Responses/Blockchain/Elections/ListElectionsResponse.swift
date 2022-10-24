//
//  ListElectionsResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//



public struct ListElectionsResponse : Codable {
    public let data : [ListElectionsDataResponse]?
    public let cursor : String?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case cursor = "cursor"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListElectionsDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct ListElectionsDataResponse : Codable {
    public let type : String?
    public let time : Int?
    public let proof : String?
    public let members : [String]?
    public let height : Int?
    public let hash : String?
    public let delay : Int?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case time = "time"
        case proof = "proof"
        case members = "members"
        case height = "height"
        case hash = "hash"
        case delay = "delay"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        proof = try values.decodeIfPresent(String.self, forKey: .proof)
        members = try values.decodeIfPresent([String].self, forKey: .members)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        delay = try values.decodeIfPresent(Int.self, forKey: .delay)
    }
}
