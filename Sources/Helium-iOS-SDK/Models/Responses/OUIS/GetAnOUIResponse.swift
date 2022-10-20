//
//  GetAnOUIResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

public struct GetAnOUIResponse : Codable {
    public let data : GetAnOUIDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(GetAnOUIDataResponse.self, forKey: .data)
    }
}

public struct GetAnOUIDataResponse : Codable {
    public let subnets : [GetAnOUISubnetsResponse]?
    public let owner : String?
    public let oui : Int?
    public let nonce : Int?
    public let block : Int?
    public let addresses : [String]?

    enum CodingKeys: String, CodingKey {
        case subnets = "subnets"
        case owner = "owner"
        case oui = "oui"
        case nonce = "nonce"
        case block = "block"
        case addresses = "addresses"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        subnets = try values.decodeIfPresent([GetAnOUISubnetsResponse].self, forKey: .subnets)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        oui = try values.decodeIfPresent(Int.self, forKey: .oui)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        addresses = try values.decodeIfPresent([String].self, forKey: .addresses)
    }
}

public struct GetAnOUISubnetsResponse : Codable {
    public let mask : Int?
    public let base : Int?

    enum CodingKeys: String, CodingKey {
        case mask = "mask"
        case base = "base"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        mask = try values.decodeIfPresent(Int.self, forKey: .mask)
        base = try values.decodeIfPresent(Int.self, forKey: .base)
    }
}
