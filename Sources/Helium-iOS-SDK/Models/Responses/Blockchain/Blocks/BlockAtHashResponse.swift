//
//  BlockAtHashResponse.swift
//  
//
//  Created by Burak Colak on 18.10.2022.
//



public struct BlockAtHashResponse : Codable {
    public let data : BlockAtHashDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(BlockAtHashDataResponse.self, forKey: .data)
    }
}

public struct BlockAtHashDataResponse : Codable {
    public let transaction_count : Int?
    public let time : Int?
    public let snapshot_hash : String?
    public let prev_hash : String?
    public let height : Int?
    public let hash : String?

    enum CodingKeys: String, CodingKey {
        case transaction_count = "transaction_count"
        case time = "time"
        case snapshot_hash = "snapshot_hash"
        case prev_hash = "prev_hash"
        case height = "height"
        case hash = "hash"
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
