//
//  ListOracleActivityResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct ListOracleActivityResponse : Codable {
    public let cursor : String?
    public let data : [ListOracleActivityDataResponse]?

    enum CodingKeys: String, CodingKey {
        case cursor = "cursor"
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
        data = try values.decodeIfPresent([ListOracleActivityDataResponse].self, forKey: .data)
    }
}

public struct ListOracleActivityDataResponse : Codable {
    public let block_height : Int?
    public let fee : Int?
    public let hash : String?
    public let height : Int?
    public let price : Int?
    public let public_key : String?
    public let time : Int?
    public let type : String?

    enum CodingKeys: String, CodingKey {
        case block_height = "block_height"
        case fee = "fee"
        case hash = "hash"
        case height = "height"
        case price = "price"
        case public_key = "public_key"
        case time = "time"
        case type = "type"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        block_height = try values.decodeIfPresent(Int.self, forKey: .block_height)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        public_key = try values.decodeIfPresent(String.self, forKey: .public_key)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}
