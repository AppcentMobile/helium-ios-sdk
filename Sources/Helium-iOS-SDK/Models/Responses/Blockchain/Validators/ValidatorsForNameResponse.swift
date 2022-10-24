//
//  ValidatorsForNameResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct ValidatorsForNameResponse : Codable {
    public let data : [ValidatorsForNameDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ValidatorsForNameDataResponse].self, forKey: .data)
    }
}

public struct ValidatorsForNameDataResponse: Codable {
    public let address : String?
    public let block : Int?
    public let block_added : Int?
    public let last_heartbeat : Int?
    public let name : String?
    public let owner : String?
    public let penalties : [String]?
    public let penalty : Double?
    public let stake : Int?
    public let stake_status : String?
    public let status : ValidatorsForNameStatusResponse?
    public let version_heartbeat : Int?

    enum CodingKeys: String, CodingKey {
        case address = "address"
        case block = "block"
        case block_added = "block_added"
        case last_heartbeat = "last_heartbeat"
        case name = "name"
        case owner = "owner"
        case penalties = "penalties"
        case penalty = "penalty"
        case stake = "stake"
        case stake_status = "stake_status"
        case status = "status"
        case version_heartbeat = "version_heartbeat"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        block_added = try values.decodeIfPresent(Int.self, forKey: .block_added)
        last_heartbeat = try values.decodeIfPresent(Int.self, forKey: .last_heartbeat)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        penalties = try values.decodeIfPresent([String].self, forKey: .penalties)
        penalty = try values.decodeIfPresent(Double.self, forKey: .penalty)
        stake = try values.decodeIfPresent(Int.self, forKey: .stake)
        stake_status = try values.decodeIfPresent(String.self, forKey: .stake_status)
        status = try values.decodeIfPresent(ValidatorsForNameStatusResponse.self, forKey: .status)
        version_heartbeat = try values.decodeIfPresent(Int.self, forKey: .version_heartbeat)
    }
}

public struct ValidatorsForNameStatusResponse: Codable {
    public let height : String?
    public let listen_addrs : String?
    public let online : String?

    enum CodingKeys: String, CodingKey {
        case height = "height"
        case listen_addrs = "listen_addrs"
        case online = "online"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(String.self, forKey: .height)
        listen_addrs = try values.decodeIfPresent(String.self, forKey: .listen_addrs)
        online = try values.decodeIfPresent(String.self, forKey: .online)
    }
}
