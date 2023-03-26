//
//  HotspotChallengesResponse.swift
//


import Foundation

public struct HotspotChallengesResponse: Codable {
    public let data: [Data]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([Data].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct HotspotChallengesDataResponse: Codable {
    public let type: String?
    public let time: Int?
    public let secret: String?
    public let path: [HotspotChallengesPathResponse]?
    public let onion_key_hash: String?
    public let height: Int?
    public let hash: String?
    public let fee: Int?
    public let challenger_owner: String?
    public let challenger_lon: Double?
    public let challenger_location: String?
    public let challenger_lat: Double?
    public let challenger: String?

    enum CodingKeys: String, CodingKey {
        case type
        case time
        case secret
        case path
        case onion_key_hash
        case height
        case hash
        case fee
        case challenger_owner
        case challenger_lon
        case challenger_location
        case challenger_lat
        case challenger
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        secret = try values.decodeIfPresent(String.self, forKey: .secret)
        path = try values.decodeIfPresent([HotspotChallengesPathResponse].self, forKey: .path)
        onion_key_hash = try values.decodeIfPresent(String.self, forKey: .onion_key_hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        challenger_owner = try values.decodeIfPresent(String.self, forKey: .challenger_owner)
        challenger_lon = try values.decodeIfPresent(Double.self, forKey: .challenger_lon)
        challenger_location = try values.decodeIfPresent(String.self, forKey: .challenger_location)
        challenger_lat = try values.decodeIfPresent(Double.self, forKey: .challenger_lat)
        challenger = try values.decodeIfPresent(String.self, forKey: .challenger)
    }
}

public struct HotspotChallengesPathResponse: Codable {
    public let witnesses: [HotspotChallengesWitnessesResponse]?
    public let receipt: HotspotChallengesReceiptResponse?
    public let geocode: HotspotChallengesGeocodeResponse?
    public let challengee_owner: String?
    public let challengee_lon: Double?
    public let challengee_location: String?
    public let challengee_lat: Double?
    public let challengee: String?

    enum CodingKeys: String, CodingKey {
        case witnesses
        case receipt
        case geocode
        case challengee_owner
        case challengee_lon
        case challengee_location
        case challengee_lat
        case challengee
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        witnesses = try values.decodeIfPresent([HotspotChallengesWitnessesResponse].self, forKey: .witnesses)
        receipt = try values.decodeIfPresent(HotspotChallengesReceiptResponse.self, forKey: .receipt)
        geocode = try values.decodeIfPresent(HotspotChallengesGeocodeResponse.self, forKey: .geocode)
        challengee_owner = try values.decodeIfPresent(String.self, forKey: .challengee_owner)
        challengee_lon = try values.decodeIfPresent(Double.self, forKey: .challengee_lon)
        challengee_location = try values.decodeIfPresent(String.self, forKey: .challengee_location)
        challengee_lat = try values.decodeIfPresent(Double.self, forKey: .challengee_lat)
        challengee = try values.decodeIfPresent(String.self, forKey: .challengee)
    }
}

public struct HotspotChallengesReceiptResponse: Codable {
    public let timestamp: Int?
    public let signal: Int?
    public let origin: String?
    public let gateway: String?
    public let data: String?

    enum CodingKeys: String, CodingKey {
        case timestamp
        case signal
        case origin
        case gateway
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
        signal = try values.decodeIfPresent(Int.self, forKey: .signal)
        origin = try values.decodeIfPresent(String.self, forKey: .origin)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        data = try values.decodeIfPresent(String.self, forKey: .data)
    }
}

public struct HotspotChallengesGeocodeResponse: Codable {
    public let short_street: String?
    public let short_state: String?
    public let short_country: String?
    public let short_city: String?
    public let long_street: String?
    public let long_state: String?
    public let long_country: String?
    public let long_city: String?

    enum CodingKeys: String, CodingKey {
        case short_street
        case short_state
        case short_country
        case short_city
        case long_street
        case long_state
        case long_country
        case long_city
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        short_street = try values.decodeIfPresent(String.self, forKey: .short_street)
        short_state = try values.decodeIfPresent(String.self, forKey: .short_state)
        short_country = try values.decodeIfPresent(String.self, forKey: .short_country)
        short_city = try values.decodeIfPresent(String.self, forKey: .short_city)
        long_street = try values.decodeIfPresent(String.self, forKey: .long_street)
        long_state = try values.decodeIfPresent(String.self, forKey: .long_state)
        long_country = try values.decodeIfPresent(String.self, forKey: .long_country)
        long_city = try values.decodeIfPresent(String.self, forKey: .long_city)
    }
}

public struct HotspotChallengesWitnessesResponse: Codable {
    public let timestamp: Int?
    public let signal: Int?
    public let packet_hash: String?
    public let owner: String?
    public let location: String?
    public let gateway: String?

    enum CodingKeys: String, CodingKey {
        case timestamp
        case signal
        case packet_hash
        case owner
        case location
        case gateway
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
        signal = try values.decodeIfPresent(Int.self, forKey: .signal)
        packet_hash = try values.decodeIfPresent(String.self, forKey: .packet_hash)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
    }
}
