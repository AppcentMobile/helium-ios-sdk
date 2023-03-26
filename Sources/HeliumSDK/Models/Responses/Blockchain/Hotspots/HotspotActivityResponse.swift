//
//  HotspotActivityResponse.swift
//

public struct HotspotActivityResponse: Codable {
    public let data: [HotspotActivityDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([HotspotActivityDataResponse].self, forKey: .data)
    }
}

public struct HotspotActivityDataResponse: Codable {
    public let fee: Int?
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
        case fee
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
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
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
