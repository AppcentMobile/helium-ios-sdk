//
//  ValidatorsForAccountResponse.swift
//


public struct ValidatorsForAccountResponse: Codable {
    public let data: [ValidatorsForAccountDataResponse]?
    public let cursor: String?

    enum CodingKeys: String, CodingKey {
        case data
        case cursor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ValidatorsForAccountDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct ValidatorsForAccountDataResponse: Codable {
    public let version_heartbeat: Int?
    public let status: ValidatorsForAccountStatusResponse?
    public let stake_status: String?
    public let stake: Int?
    public let penalty: Double?
    public let penalties: [ValidatorsForAccountPenaltiesResponse]?
    public let owner: String?
    public let name: String?
    public let last_heartbeat: Int?
    public let block_added: Int?
    public let block: Int?
    public let address: String?

    enum CodingKeys: String, CodingKey {
        case version_heartbeat
        case status
        case stake_status
        case stake
        case penalty
        case penalties
        case owner
        case name
        case last_heartbeat
        case block_added
        case block
        case address
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        version_heartbeat = try values.decodeIfPresent(Int.self, forKey: .version_heartbeat)
        status = try values.decodeIfPresent(ValidatorsForAccountStatusResponse.self, forKey: .status)
        stake_status = try values.decodeIfPresent(String.self, forKey: .stake_status)
        stake = try values.decodeIfPresent(Int.self, forKey: .stake)
        penalty = try values.decodeIfPresent(Double.self, forKey: .penalty)
        penalties = try values.decodeIfPresent([ValidatorsForAccountPenaltiesResponse].self, forKey: .penalties)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        last_heartbeat = try values.decodeIfPresent(Int.self, forKey: .last_heartbeat)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}

public struct ValidatorsForAccountStatusResponse: Codable {
    public let online: String?
    public let listen_addrs: [String]?
    public let height: Int?

    enum CodingKeys: String, CodingKey {
        case online
        case listen_addrs
        case height
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        online = try values.decodeIfPresent(String.self, forKey: .online)
        listen_addrs = try values.decodeIfPresent([String].self, forKey: .listen_addrs)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
}

public struct ValidatorsForAccountPenaltiesResponse: Codable {
    public let type: String?
    public let height: Int?
    public let amount: Int?

    enum CodingKeys: String, CodingKey {
        case type
        case height
        case amount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
    }
}
