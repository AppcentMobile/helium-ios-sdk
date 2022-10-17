//
//  ElectionsForAccountResponse.swift
//  
//
//  Created by Burak Colak on 17.10.2022.
//

import UIKit

public struct ElectionsForAccountResponse : Codable {
    public let data : [ElectionsForAccountDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ElectionsForAccountDataResponse].self, forKey: .data)
    }
}

public struct ElectionsForAccountDataResponse : Codable {
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
