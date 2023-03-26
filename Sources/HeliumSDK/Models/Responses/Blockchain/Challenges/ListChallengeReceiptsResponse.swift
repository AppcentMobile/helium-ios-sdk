//
//  ListChallengeReceipts.swift
//
//
//  Created by Burak Colak on 19.10.2022.
//

public struct ListChallengeReceiptsResponse: Codable {
    public let data: [ListChallengeReceiptsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListChallengeReceiptsDataResponse].self, forKey: .data)
    }
}

public struct ListChallengeReceiptsDataResponse: Codable {
    public let type: String?
    public let time: Int?
    public let secret: String?
    public let request_block_hash: String?
    public let path: [ListChallengeReceiptsPathResponse]?
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
        case request_block_hash
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
        request_block_hash = try values.decodeIfPresent(String.self, forKey: .request_block_hash)
        path = try values.decodeIfPresent([ListChallengeReceiptsPathResponse].self, forKey: .path)
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

public struct ListChallengeReceiptsPathResponse: Codable {
    public let witnesses: [ListChallengeReceiptsWitnessResponse]?
    public let receipt: ListChallengeReceiptsReceiptResponse?
    public let geocode: ListChallengeReceiptsGeocodeResponse?
    public let challengee_owner: String?
    public let challengee_lon: Double?
    public let challengee_location_hex: String?
    public let challengee_location: String?
    public let challengee_lat: Double?
    public let challengee: String?

    enum CodingKeys: String, CodingKey {
        case witnesses
        case receipt
        case geocode
        case challengee_owner
        case challengee_lon
        case challengee_location_hex
        case challengee_location
        case challengee_lat
        case challengee
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        witnesses = try values.decodeIfPresent([ListChallengeReceiptsWitnessResponse].self, forKey: .witnesses)
        receipt = try values.decodeIfPresent(ListChallengeReceiptsReceiptResponse.self, forKey: .receipt)
        geocode = try values.decodeIfPresent(ListChallengeReceiptsGeocodeResponse.self, forKey: .geocode)
        challengee_owner = try values.decodeIfPresent(String.self, forKey: .challengee_owner)
        challengee_lon = try values.decodeIfPresent(Double.self, forKey: .challengee_lon)
        challengee_location_hex = try values.decodeIfPresent(String.self, forKey: .challengee_location_hex)
        challengee_location = try values.decodeIfPresent(String.self, forKey: .challengee_location)
        challengee_lat = try values.decodeIfPresent(Double.self, forKey: .challengee_lat)
        challengee = try values.decodeIfPresent(String.self, forKey: .challengee)
    }
}

public struct ListChallengeReceiptsWitnessResponse: Codable {
    public let timestamp: Int?
    public let snr: Double?
    public let signal: Int?
    public let packet_hash: String?
    public let owner: String?
    public let location_hex: String?
    public let location: String?
    public let is_valid: Bool?
    public let gateway: String?
    public let frequency: Double?
    public let datarate: String?
    public let channel: Int?

    enum CodingKeys: String, CodingKey {
        case timestamp
        case snr
        case signal
        case packet_hash
        case owner
        case location_hex
        case location
        case is_valid
        case gateway
        case frequency
        case datarate
        case channel
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
        snr = try values.decodeIfPresent(Double.self, forKey: .snr)
        signal = try values.decodeIfPresent(Int.self, forKey: .signal)
        packet_hash = try values.decodeIfPresent(String.self, forKey: .packet_hash)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        location_hex = try values.decodeIfPresent(String.self, forKey: .location_hex)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        is_valid = try values.decodeIfPresent(Bool.self, forKey: .is_valid)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        frequency = try values.decodeIfPresent(Double.self, forKey: .frequency)
        datarate = try values.decodeIfPresent(String.self, forKey: .datarate)
        channel = try values.decodeIfPresent(Int.self, forKey: .channel)
    }
}

public struct ListChallengeReceiptsReceiptResponse: Codable {
    public let timestamp: Int?
    public let snr: Double?
    public let signal: Int?
    public let origin: String?
    public let gateway: String?
    public let frequency: Double?
    public let datarate: String?
    public let data: String?
    public let channel: Int?

    enum CodingKeys: String, CodingKey {
        case timestamp
        case snr
        case signal
        case origin
        case gateway
        case frequency
        case datarate
        case data
        case channel
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
        snr = try values.decodeIfPresent(Double.self, forKey: .snr)
        signal = try values.decodeIfPresent(Int.self, forKey: .signal)
        origin = try values.decodeIfPresent(String.self, forKey: .origin)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        frequency = try values.decodeIfPresent(Double.self, forKey: .frequency)
        datarate = try values.decodeIfPresent(String.self, forKey: .datarate)
        data = try values.decodeIfPresent(String.self, forKey: .data)
        channel = try values.decodeIfPresent(Int.self, forKey: .channel)
    }
}

public struct ListChallengeReceiptsGeocodeResponse: Codable {
    public let short_street: String?
    public let short_state: String?
    public let short_country: String?
    public let short_city: String?
    public let long_street: String?
    public let long_state: String?
    public let long_country: String?
    public let long_city: String?
    public let city_id: String?

    enum CodingKeys: String, CodingKey {
        case short_street
        case short_state
        case short_country
        case short_city
        case long_street
        case long_state
        case long_country
        case long_city
        case city_id
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
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
    }
}
