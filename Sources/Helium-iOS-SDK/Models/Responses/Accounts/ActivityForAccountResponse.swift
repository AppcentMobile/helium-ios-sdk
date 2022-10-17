//
//  ActivityForAccountResponse.swift
//  
//
//  Created by Burak Colak on 17.10.2022.
//

import UIKit

public struct ActivityForAccountResponse : Codable {
    public let data : [ActivityForAccountDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ActivityForAccountDataResponse].self, forKey: .data)
    }
}

public struct ActivityForAccountDataResponse : Codable {
    public let type : String?
    public let time : Int?
    public let start_epoch : Int?
    public let rewards : [ActivityForAccountRewardsResponse]?
    public let height : Int?
    public let hash : String?
    public let end_epoch : Int?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case time = "time"
        case start_epoch = "start_epoch"
        case rewards = "rewards"
        case height = "height"
        case hash = "hash"
        case end_epoch = "end_epoch"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        start_epoch = try values.decodeIfPresent(Int.self, forKey: .start_epoch)
        rewards = try values.decodeIfPresent([ActivityForAccountRewardsResponse].self, forKey: .rewards)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        end_epoch = try values.decodeIfPresent(Int.self, forKey: .end_epoch)
    }
}

public struct ActivityForAccountRewardsResponse : Codable {
    public let type : String?
    public let gateway : String?
    public let amount : Int?
    public let account : String?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case gateway = "gateway"
        case amount = "amount"
        case account = "account"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
        account = try values.decodeIfPresent(String.self, forKey: .account)
    }
}
