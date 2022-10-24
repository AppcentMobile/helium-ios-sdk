//
//  OraclePriceStatsResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct OraclePriceStatsResponse: Codable {
    public let data: OraclePriceStatsDataResponse?
    public let meta: OraclePriceStatsMetaResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case meta = "meta"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(OraclePriceStatsDataResponse.self, forKey: .data)
        meta = try values.decodeIfPresent(OraclePriceStatsMetaResponse.self, forKey: .meta)
    }
}

public struct OraclePriceStatsDataResponse: Codable {
    public let avg : Double?
    public let max : Double?
    public let median : Double?
    public let min : Double?
    public let stddev : Double?

    enum CodingKeys: String, CodingKey {
        case avg = "avg"
        case max = "max"
        case median = "median"
        case min = "min"
        case stddev = "stddev"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        avg = try values.decodeIfPresent(Double.self, forKey: .avg)
        max = try values.decodeIfPresent(Double.self, forKey: .max)
        median = try values.decodeIfPresent(Double.self, forKey: .median)
        min = try values.decodeIfPresent(Double.self, forKey: .min)
        stddev = try values.decodeIfPresent(Double.self, forKey: .stddev)
    }
}

public struct OraclePriceStatsMetaResponse: Codable {
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
