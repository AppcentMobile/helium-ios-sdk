//
//  CurrentlyElectedValidatorsResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct CurrentlyElectedValidatorsResponse : Codable {
    public let data : [CurrentlyElectedValidatorsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([CurrentlyElectedValidatorsDataResponse].self, forKey: .data)
    }
}

public struct CurrentlyElectedValidatorsDataResponse : Codable {
    public let version_heartbeat : Int?
    public let status : String?
    public let stake : Int?
    public let owner : String?
    public let last_heartbeat : Int?
    public let block : Int?
    public let address : String?

    enum CodingKeys: String, CodingKey {
        case version_heartbeat = "version_heartbeat"
        case status = "status"
        case stake = "stake"
        case owner = "owner"
        case last_heartbeat = "last_heartbeat"
        case block = "block"
        case address = "address"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        version_heartbeat = try values.decodeIfPresent(Int.self, forKey: .version_heartbeat)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        stake = try values.decodeIfPresent(Int.self, forKey: .stake)
        owner = try values.decodeIfPresent(String.self, forKey: .owner)
        last_heartbeat = try values.decodeIfPresent(Int.self, forKey: .last_heartbeat)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}
