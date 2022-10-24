//
//  ListChainVariableActivityResponse.swift
//  
//
//  Created by Burak Colak on 18.10.2022.
//



public struct ListChainVariableActivityResponse : Codable {
    public let data : [ListChainVariableActivityDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListChainVariableActivityDataResponse].self, forKey: .data)
    }
}

public struct ListChainVariableActivityDataResponse : Codable {
    public let cancels : [String]?
    public let hash : String?
    public let height : Int?
    public let key_proof : String?
    public let master_key : String?
    public let nonce : Int?
    public let proof : String?
    public let time : Int?
    public let type : String?
    public let unsets : [String]?
    public let vars: ListChainVariableActivityVarsResponse?
    public let version_predicate : Int?

    enum CodingKeys: String, CodingKey {
        case cancels = "cancels"
        case hash = "hash"
        case height = "height"
        case key_proof = "key_proof"
        case master_key = "master_key"
        case nonce = "nonce"
        case proof = "proof"
        case time = "time"
        case type = "type"
        case unsets = "unsets"
        case vars = "vars"
        case version_predicate = "version_predicate"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cancels = try values.decodeIfPresent([String].self, forKey: .cancels)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        key_proof = try values.decodeIfPresent(String.self, forKey: .key_proof)
        master_key = try values.decodeIfPresent(String.self, forKey: .master_key)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        proof = try values.decodeIfPresent(String.self, forKey: .proof)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        unsets = try values.decodeIfPresent([String].self, forKey: .unsets)
        vars = try values.decodeIfPresent(ListChainVariableActivityVarsResponse.self, forKey: .vars)
        version_predicate = try values.decodeIfPresent(Int.self, forKey: .version_predicate)
    }
}

public struct ListChainVariableActivityVarsResponse : Codable {
    public let price_oracle_height_delta : Int?
    public let price_oracle_price_scan_delay : Int?
    public let price_oracle_price_scan_max : Int?
    public let price_oracle_public_keys : String?
    public let price_oracle_refresh_interval : Int?

    enum CodingKeys: String, CodingKey {
        case price_oracle_height_delta = "price_oracle_height_delta"
        case price_oracle_price_scan_delay = "price_oracle_price_scan_delay"
        case price_oracle_price_scan_max = "price_oracle_price_scan_max"
        case price_oracle_public_keys = "price_oracle_public_keys"
        case price_oracle_refresh_interval = "price_oracle_refresh_interval"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        price_oracle_height_delta = try values.decodeIfPresent(Int.self, forKey: .price_oracle_height_delta)
        price_oracle_price_scan_delay = try values.decodeIfPresent(Int.self, forKey: .price_oracle_price_scan_delay)
        price_oracle_price_scan_max = try values.decodeIfPresent(Int.self, forKey: .price_oracle_price_scan_max)
        price_oracle_public_keys = try values.decodeIfPresent(String.self, forKey: .price_oracle_public_keys)
        price_oracle_refresh_interval = try values.decodeIfPresent(Int.self, forKey: .price_oracle_refresh_interval)
    }
}
