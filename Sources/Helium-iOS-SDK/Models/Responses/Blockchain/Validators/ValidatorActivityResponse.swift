//
//  ValidatorActivityResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//



public struct ValidatorActivityResponse: Codable {
    public let cursor : String?
    public let data : [ValidatorActivityDataResponse]?

    enum CodingKeys: String, CodingKey {
        case cursor = "cursor"
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
        data = try values.decodeIfPresent([ValidatorActivityDataResponse].self, forKey: .data)
    }
}

public struct ValidatorActivityDataResponse : Codable {
    public let address : String?
    public let hash : String?
    public let height : Int?
    public let signature : String?
    public let time : Int?
    public let type : String?
    public let version : Int?

    enum CodingKeys: String, CodingKey {
        case address = "address"
        case hash = "hash"
        case height = "height"
        case signature = "signature"
        case time = "time"
        case type = "type"
        case version = "version"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        signature = try values.decodeIfPresent(String.self, forKey: .signature)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        version = try values.decodeIfPresent(Int.self, forKey: .version)
    }
}
