//
//  ElectedValidatorsInAnElectionResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

public struct ElectedValidatorsInAnElectionResponse : Codable {
    public let data : [ElectedValidatorsInAnElectionDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ElectedValidatorsInAnElectionDataResponse].self, forKey: .data)
    }
}

public struct ElectedValidatorsInAnElectionDataResponse: Codable {
    public let address : String?
    public let block : Int?
    public let block_added : Int?
    public let last_heartbeat : Int?
    public let name : String?
    public let owner : String?
    public let penalties : [ElectedValidatorsInAnElectionPenaltiesResponse]?
    public let penalty : Double?
    public let stake : Int?
    public let stake_status : String?
    public let status : ElectedValidatorsInAnElectionStatusResponse?
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
        penalties = try values.decodeIfPresent([ElectedValidatorsInAnElectionPenaltiesResponse].self, forKey: .penalties)
        penalty = try values.decodeIfPresent(Double.self, forKey: .penalty)
        stake = try values.decodeIfPresent(Int.self, forKey: .stake)
        stake_status = try values.decodeIfPresent(String.self, forKey: .stake_status)
        status = try values.decodeIfPresent(ElectedValidatorsInAnElectionStatusResponse.self, forKey: .status)
        version_heartbeat = try values.decodeIfPresent(Int.self, forKey: .version_heartbeat)
    }
}

public struct ElectedValidatorsInAnElectionPenaltiesResponse: Codable {
    public let amount : Double?
    public let height : Int?
    public let type : String?

    enum CodingKeys: String, CodingKey {
        case amount = "amount"
        case height = "height"
        case type = "type"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        amount = try values.decodeIfPresent(Double.self, forKey: .amount)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}

public struct ElectedValidatorsInAnElectionStatusResponse: Codable {
    public let height : Int?
    public let listen_addrs : [String]?
    public let online : String?

    enum CodingKeys: String, CodingKey {
        case height = "height"
        case listen_addrs = "listen_addrs"
        case online = "online"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        listen_addrs = try values.decodeIfPresent([String].self, forKey: .listen_addrs)
        online = try values.decodeIfPresent(String.self, forKey: .online)
    }
}
