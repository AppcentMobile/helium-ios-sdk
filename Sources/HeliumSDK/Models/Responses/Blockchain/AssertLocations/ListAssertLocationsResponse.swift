//
//  ListAssertLocationsResponse.swift
//
//
//  Created by Burak Colak on 18.10.2022.
//

public struct ListAssertLocationsResponse: Codable {
    public let data: [ListAssertLocationsDataResponse]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListAssertLocationsDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct ListAssertLocationsDataResponse: Codable {
    public let elevation: Int?
    public let fee: Int?
    public let gain: Int?
    public let gateway: String?
    public let hash: String?
    public let height: Int?
    public let lat: Double?
    public let lng: Double?
    public let location: String?
    public let nonce: Int?
    public let owner: String?
    public let payer: String?
    public let staking_fee: Int?
    public let time: Int?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case elevation
        case fee
        case gain
        case gateway
        case hash
        case height
        case lat
        case lng
        case location
        case nonce
        case owner
        case payer
        case staking_fee
        case time
        case type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        elevation = try values.decodeIfPresent(Int.self, forKey: .elevation)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        gain = try values.decodeIfPresent(Int.self, forKey: .gain)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        payer = try values.decodeIfPresent(String.self, forKey: .payer)
        staking_fee = try values.decodeIfPresent(Int.self, forKey: .staking_fee)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}
