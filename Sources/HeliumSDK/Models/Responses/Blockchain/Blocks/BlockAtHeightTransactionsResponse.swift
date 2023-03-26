//
//  BlockAtHashTransactionsResponse.swift
//
//
//  Created by Burak Colak on 18.10.2022.
//

public struct BlockAtHeightTransactionsResponse: Codable {
    public let data: [BlockAtHeightTransactionsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([BlockAtHeightTransactionsDataResponse].self, forKey: .data)
    }
}

public struct BlockAtHeightTransactionsDataResponse: Codable {
    public let version: Int?
    public let type: String?
    public let time: Int?
    public let signature: String?
    public let secret_hash: String?
    public let owner: String?
    public let onion_key_hash: String?
    public let location: String?
    public let lng: Double?
    public let lat: Double?
    public let height: Int?
    public let hash: String?
    public let fee: Int?
    public let challenger: String?
    public let block_hash: String?

    enum CodingKeys: String, CodingKey {
        case version
        case type
        case time
        case signature
        case secret_hash
        case owner
        case onion_key_hash
        case location
        case lng
        case lat
        case height
        case hash
        case fee
        case challenger
        case block_hash
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        version = try values.decodeIfPresent(Int.self, forKey: .version)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        signature = try values.decodeIfPresent(String.self, forKey: .signature)
        secret_hash = try values.decodeIfPresent(String.self, forKey: .secret_hash)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        onion_key_hash = try values.decodeIfPresent(String.self, forKey: .onion_key_hash)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        challenger = try values.decodeIfPresent(String.self, forKey: .challenger)
        block_hash = try values.decodeIfPresent(String.self, forKey: .block_hash)
    }
}
