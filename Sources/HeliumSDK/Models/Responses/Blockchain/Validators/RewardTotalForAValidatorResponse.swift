//
//  RewardTotalForAValidatorResponse.swift
//

public struct RewardTotalForAValidatorResponse: Codable {
    public let data: RewardTotalForAValidatorDataResponse?
    public let meta: RewardTotalForAValidatorMetaResponse?

    enum CodingKeys: String, CodingKey {
        case data
        case meta
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(RewardTotalForAValidatorDataResponse.self, forKey: .data)
        meta = try values.decodeIfPresent(RewardTotalForAValidatorMetaResponse.self, forKey: .meta)
    }
}

public struct RewardTotalForAValidatorDataResponse: Codable {
    public let avg: Double?
    public let max: Double?
    public let median: Double?
    public let min: Double?
    public let stddev: Double?
    public let sum: Int?
    public let total: Double?

    enum CodingKeys: String, CodingKey {
        case avg
        case max
        case median
        case min
        case stddev
        case sum
        case total
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

public struct RewardTotalForAValidatorMetaResponse: Codable {
    public let max_time: String?
    public let min_time: String?

    enum CodingKeys: String, CodingKey {
        case max_time
        case min_time
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        max_time = try values.decodeIfPresent(String.self, forKey: .max_time)
        min_time = try values.decodeIfPresent(String.self, forKey: .min_time)
    }
}
