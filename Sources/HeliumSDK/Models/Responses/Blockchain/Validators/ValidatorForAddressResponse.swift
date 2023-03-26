//
//  ValidatorForAddressResponse.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

public struct ValidatorForAddressResponse: Codable {
    public let data: ValidatorForAddressDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(ValidatorForAddressDataResponse.self, forKey: .data)
    }
}

public struct ValidatorForAddressDataResponse: Codable {
    public let version_heartbeat: Int?
    public let status: ValidatorForAddressStatusResponse?
    public let stake_status: String?
    public let stake: Int?
    public let penalty: Double?
    public let penalties: [ValidatorForAddressPenaltiesResponse]?
    public let owner: String?
    public let name: String?
    public let last_heartbeat: Int?
    public let consensus_groups: Int?
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
        case consensus_groups
        case block_added
        case block
        case address
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        version_heartbeat = try values.decodeIfPresent(Int.self, forKey: .version_heartbeat)
        status = try values.decodeIfPresent(ValidatorForAddressStatusResponse.self, forKey: .status)
        stake_status = try values.decodeIfPresent(String.self, forKey: .stake_status)
        stake = try values.decodeIfPresent(Int.self, forKey: .stake)
        penalty = try values.decodeIfPresent(Double.self, forKey: .penalty)
        penalties = try values.decodeIfPresent([ValidatorForAddressPenaltiesResponse].self, forKey: .penalties)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        last_heartbeat = try values.decodeIfPresent(Int.self, forKey: .last_heartbeat)
        consensus_groups = try values.decodeIfPresent(Int.self, forKey: .consensus_groups)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}

public struct ValidatorForAddressPenaltiesResponse: Codable {
    public let type: String?
    public let height: Int?
    public let amount: Double?

    enum CodingKeys: String, CodingKey {
        case type
        case height
        case amount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        amount = try values.decodeIfPresent(Double.self, forKey: .amount)
    }
}

public struct ValidatorForAddressStatusResponse: Codable {
    public let timestamp: String?
    public let online: String?
    public let listen_addrs: [String]?
    public let height: Int?

    enum CodingKeys: String, CodingKey {
        case timestamp
        case online
        case listen_addrs
        case height
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        online = try values.decodeIfPresent(String.self, forKey: .online)
        listen_addrs = try values.decodeIfPresent([String].self, forKey: .listen_addrs)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
}
