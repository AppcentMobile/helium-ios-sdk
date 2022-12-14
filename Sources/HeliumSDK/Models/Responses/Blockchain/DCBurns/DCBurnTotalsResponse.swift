//
//  DCBurnTotalsResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

public struct DCBurnTotalsResponse : Codable {
    public let data : [DCBurnTotalsDataResponse]?
    public let meta : DCBurnTotalsMetaResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case meta = "meta"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([DCBurnTotalsDataResponse].self, forKey: .data)
        meta = try values.decodeIfPresent(DCBurnTotalsMetaResponse.self, forKey: .meta)
    }
}

public struct DCBurnTotalsDataResponse: Codable {
    public let add_gateway : Int?
    public let assert_location : Int?
    public let fee : Int?
    public let state_channel : Int?
    public let total : Int?

    enum CodingKeys: String, CodingKey {
        case add_gateway = "add_gateway"
        case assert_location = "assert_location"
        case fee = "fee"
        case state_channel = "state_channel"
        case total = "total"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        add_gateway = try values.decodeIfPresent(Int.self, forKey: .add_gateway)
        assert_location = try values.decodeIfPresent(Int.self, forKey: .assert_location)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        state_channel = try values.decodeIfPresent(Int.self, forKey: .state_channel)
        total = try values.decodeIfPresent(Int.self, forKey: .total)
    }
}

public struct DCBurnTotalsMetaResponse : Codable {
    public let bucket : String?
    public let max_time : String?
    public let min_time : String?

    enum CodingKeys: String, CodingKey {
        case bucket = "bucket"
        case max_time = "max_time"
        case min_time = "min_time"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bucket = try values.decodeIfPresent(String.self, forKey: .bucket)
        max_time = try values.decodeIfPresent(String.self, forKey: .max_time)
        min_time = try values.decodeIfPresent(String.self, forKey: .min_time)
    }
}
