//
//  ListAccountsResponse.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public struct ListAccountsResponse : Codable {
    public let data : [ListAccountsDataResponse]?
    public let cursor : String?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case cursor = "cursor"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([ListAccountsDataResponse].self, forKey: .data)
        cursor = try values.decodeIfPresent(String.self, forKey: .cursor)
    }
}

public struct ListAccountsDataResponse : Codable {
    let sec_nonce : Int?
    let sec_balance : Int?
    let nonce : Int?
    let dc_nonce : Int?
    let dc_balance : Int?
    let block : Int?
    let balance : Int?
    let address : String?

    enum CodingKeys: String, CodingKey {
        case sec_nonce = "sec_nonce"
        case sec_balance = "sec_balance"
        case nonce = "nonce"
        case dc_nonce = "dc_nonce"
        case dc_balance = "dc_balance"
        case block = "block"
        case balance = "balance"
        case address = "address"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        sec_nonce = try values.decodeIfPresent(Int.self, forKey: .sec_nonce)
        sec_balance = try values.decodeIfPresent(Int.self, forKey: .sec_balance)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        dc_nonce = try values.decodeIfPresent(Int.self, forKey: .dc_nonce)
        dc_balance = try values.decodeIfPresent(Int.self, forKey: .dc_balance)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
        balance = try values.decodeIfPresent(Int.self, forKey: .balance)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}
