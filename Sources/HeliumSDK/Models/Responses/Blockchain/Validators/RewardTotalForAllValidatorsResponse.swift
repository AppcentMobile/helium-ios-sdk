//
//  RewardTotalForAllValidatorsResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct RewardTotalForAllValidatorsResponse : Codable {
    public let data : RewardTotalForAllValidatorsDataResponse?
    public let meta : RewardTotalForAllValidatorsMetaResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case meta = "meta"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(RewardTotalForAllValidatorsDataResponse.self, forKey: .data)
        meta = try values.decodeIfPresent(RewardTotalForAllValidatorsMetaResponse.self, forKey: .meta)
    }
}

public struct RewardTotalForAllValidatorsDataResponse : Codable {
    public let avg : Double?
    public let max : Double?
    public let median : Double?
    public let min : Double?
    public let stddev : Double?
    public let sum : Int?
    public let total : Double?

    enum CodingKeys: String, CodingKey {
        case avg = "avg"
        case max = "max"
        case median = "median"
        case min = "min"
        case stddev = "stddev"
        case sum = "sum"
        case total = "total"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avg = try values.decodeIfPresent(Double.self, forKey: .avg)
        max = try values.decodeIfPresent(Double.self, forKey: .max)
        median = try values.decodeIfPresent(Double.self, forKey: .median)
        min = try values.decodeIfPresent(Double.self, forKey: .min)
        stddev = try values.decodeIfPresent(Double.self, forKey: .stddev)
        sum = try values.decodeIfPresent(Int.self, forKey: .sum)
        total = try values.decodeIfPresent(Double.self, forKey: .total)
    }
}

public struct RewardTotalForAllValidatorsMetaResponse : Codable {
    public let max_time : String?
    public let min_time : String?

    enum CodingKeys: String, CodingKey {
        case max_time = "max_time"
        case min_time = "min_time"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        max_time = try values.decodeIfPresent(String.self, forKey: .max_time)
        min_time = try values.decodeIfPresent(String.self, forKey: .min_time)
    }
}
