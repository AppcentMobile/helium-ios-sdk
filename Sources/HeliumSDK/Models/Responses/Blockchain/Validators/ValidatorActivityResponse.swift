//
//  ValidatorActivityResponse.swift
//


public struct ValidatorActivityResponse: Codable {
    public let cursor: String?
    public let data: [ValidatorActivityDataResponse]?

    enum CodingKeys: String, CodingKey {
        case cursor
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
        data = try values.decodeIfPresent([ValidatorActivityDataResponse].self, forKey: .data)
    }
}

public struct ValidatorActivityDataResponse: Codable {
    public let address: String?
    public let hash: String?
    public let height: Int?
    public let signature: String?
    public let time: Int?
    public let type: String?
    public let version: Int?

    enum CodingKeys: String, CodingKey {
        case address
        case hash
        case height
        case signature
        case time
        case type
        case version
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
