//
//  StateChannelClosesResponse.swift
//

public struct StateChannelClosesResponse: Codable {
    public let data: [StateChannelClosesDataResponse]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([StateChannelClosesDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct StateChannelClosesDataResponse: Codable {
    public let type: String?
    public let time: Int?
    public let state_channel: StateChannelClosesStateChannelResponse?
    public let height: Int?
    public let hash: String?
    public let conflicts_with: String?
    public let closer: String?

    enum CodingKeys: String, CodingKey {
        case type
        case time
        case state_channel
        case height
        case hash
        case conflicts_with
        case closer
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        state_channel = try values.decodeIfPresent(StateChannelClosesStateChannelResponse.self, forKey: .state_channel)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        conflicts_with = try values.decodeIfPresent(String.self, forKey: .conflicts_with)
        closer = try values.decodeIfPresent(String.self, forKey: .closer)
    }
}

public struct StateChannelClosesStateChannelResponse: Codable {
    public let summaries: [StateChannelClosesSummariesResponse]?
    public let state: String?
    public let root_hash: String?
    public let owner: String?
    public let nonce: Int?
    public let id: String?
    public let expire_at_block: Int?

    enum CodingKeys: String, CodingKey {
        case summaries
        case state
        case root_hash
        case owner
        case nonce
        case id
        case expire_at_block
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        summaries = try values.decodeIfPresent([StateChannelClosesSummariesResponse].self, forKey: .summaries)
        state = try values.decodeIfPresent(String.self, forKey: .state)
        root_hash = try values.decodeIfPresent(String.self, forKey: .root_hash)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        expire_at_block = try values.decodeIfPresent(Int.self, forKey: .expire_at_block)
    }
}

public struct StateChannelClosesSummariesResponse: Codable {
    public let owner: String?
    public let num_packets: Int?
    public let num_dcs: Int?
    public let location: String?
    public let client: String?

    enum CodingKeys: String, CodingKey {
        case owner
        case num_packets
        case num_dcs
        case location
        case client
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        num_packets = try values.decodeIfPresent(Int.self, forKey: .num_packets)
        num_dcs = try values.decodeIfPresent(Int.self, forKey: .num_dcs)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        client = try values.decodeIfPresent(String.self, forKey: .client)
    }
}
