//
//  HotspotRolesResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

import UIKit

public struct HotspotRolesResponse: Codable {
    public let data : [HotspotRolesDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([HotspotRolesDataResponse].self, forKey: .data)
    }
}

public struct HotspotRolesDataResponse: Codable {
    public let type : String?
    public let time : Int?
    public let role : String?
    public let height : Int?
    public let hash : String?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case time = "time"
        case role = "role"
        case height = "height"
        case hash = "hash"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        role = try values.decodeIfPresent(String.self, forKey: .role)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
    }
}
