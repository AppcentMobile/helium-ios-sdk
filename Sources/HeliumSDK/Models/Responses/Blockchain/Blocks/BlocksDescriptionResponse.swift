//
//  BlocksDescriptionResponse.swift
//

public struct BlocksDescriptionResponse: Codable {
    public let data: [BlocksDescriptionDataResponse]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([BlocksDescriptionDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct BlocksDescriptionDataResponse: Codable {
    public let transaction_count: Int?
    public let time: Int?
    public let snapshot_hash: String?
    public let prev_hash: String?
    public let height: Int?
    public let hash: String?

    enum CodingKeys: String, CodingKey {
        case transaction_count
        case time
        case snapshot_hash
        case prev_hash
        case height
        case hash
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        transaction_count = try values.decodeIfPresent(Int.self, forKey: .transaction_count)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        snapshot_hash = try values.decodeIfPresent(String.self, forKey: .snapshot_hash)
        prev_hash = try values.decodeIfPresent(String.self, forKey: .prev_hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
    }
}
