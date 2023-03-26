//
//  ElectedValidatorsAtABlockResponse.swift
//

public struct ElectedValidatorsAtABlockResponse: Codable {
    public let data: [ElectedValidatorsAtABlockDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ElectedValidatorsAtABlockDataResponse].self, forKey: .data)
    }
}

public struct ElectedValidatorsAtABlockDataResponse: Codable {
    public let address: String?
    public let block: Int?
    public let block_added: Int?
    public let last_heartbeat: Int?
    public let name: String?
    public let owner: String?
    public let penalties: [ElectedValidatorsAtABlockPenaltiesResponse]?
    public let penalty: Double?
    public let stake: Int?
    public let stake_status: String?
    public let status: ElectedValidatorsAtABlockStatusResponse?
    public let version_heartbeat: Int?

    enum CodingKeys: String, CodingKey {
        case address
        case block
        case block_added
        case last_heartbeat
        case name
        case owner
        case penalties
        case penalty
        case stake
        case stake_status
        case status
        case version_heartbeat
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        last_heartbeat = try values.decodeIfPresent(Int.self, forKey: .last_heartbeat)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        penalties = try values.decodeIfPresent([ElectedValidatorsAtABlockPenaltiesResponse].self, forKey: .penalties)
        penalty = try values.decodeIfPresent(Double.self, forKey: .penalty)
        stake = try values.decodeIfPresent(Int.self, forKey: .stake)
        stake_status = try values.decodeIfPresent(String.self, forKey: .stake_status)
        status = try values.decodeIfPresent(ElectedValidatorsAtABlockStatusResponse.self, forKey: .status)
        version_heartbeat = try values.decodeIfPresent(Int.self, forKey: .version_heartbeat)
    }
}

public struct ElectedValidatorsAtABlockPenaltiesResponse: Codable {
    public let amount: Double?
    public let height: Int?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case amount
        case height
        case type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        amount = try values.decodeIfPresent(Double.self, forKey: .amount)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}

public struct ElectedValidatorsAtABlockStatusResponse: Codable {
    public let height: Int?
    public let listen_addrs: [String]?
    public let online: String?

    enum CodingKeys: String, CodingKey {
        case height
        case listen_addrs
        case online
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        listen_addrs = try values.decodeIfPresent([String].self, forKey: .listen_addrs)
        online = try values.decodeIfPresent(String.self, forKey: .online)
    }
}
