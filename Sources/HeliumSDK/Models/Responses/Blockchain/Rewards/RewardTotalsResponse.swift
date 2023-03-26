//
//  RewardTotalsResponse.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

public struct RewardTotalsResponse: Codable {
    public let meta: RewardTotalsMetaResponse?
    public let data: [RewardTotalsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case meta
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        meta = try values.decodeIfPresent(RewardTotalsMetaResponse.self, forKey: .meta)
        data = try values.decodeIfPresent([RewardTotalsDataResponse].self, forKey: .data)
    }
}

public struct RewardTotalsDataResponse: Codable {
    public let total: Double?
    public let timestamp: String?
    public let sum: Int?
    public let stddev: Double?
    public let min: Double?
    public let median: Double?
    public let max: Double?
    public let avg: Double?

    enum CodingKeys: String, CodingKey {
        case total
        case timestamp
        case sum
        case stddev
        case min
        case median
        case max
        case avg
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        total = try values.decodeIfPresent(Double.self, forKey: .total)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        sum = try values.decodeIfPresent(Int.self, forKey: .sum)
        stddev = try values.decodeIfPresent(Double.self, forKey: .stddev)
        min = try values.decodeIfPresent(Double.self, forKey: .min)
        median = try values.decodeIfPresent(Double.self, forKey: .median)
        max = try values.decodeIfPresent(Double.self, forKey: .max)
        avg = try values.decodeIfPresent(Double.self, forKey: .avg)
    }
}

public struct RewardTotalsMetaResponse: Codable {
    public let min_time: String?
    public let max_time: String?
    public let bucket: String?

    enum CodingKeys: String, CodingKey {
        case min_time
        case max_time
        case bucket
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        min_time = try values.decodeIfPresent(String.self, forKey: .min_time)
        max_time = try values.decodeIfPresent(String.self, forKey: .max_time)
        bucket = try values.decodeIfPresent(String.self, forKey: .bucket)
    }
}
