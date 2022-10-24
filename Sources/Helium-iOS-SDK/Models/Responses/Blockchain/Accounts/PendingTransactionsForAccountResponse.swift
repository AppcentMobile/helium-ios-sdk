//
//  PendingTransactionsForAccountResponse.swift
//  
//
//  Created by Burak Colak on 17.10.2022.
//

public struct PendingTransactionsForAccountResponse : Codable {
    public let data : [PendingTransactionsForAccountDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([PendingTransactionsForAccountDataResponse].self, forKey: .data)
    }
}

public struct PendingTransactionsForAccountDataResponse: Codable {
    public let created_at : String?
    public let failed_reason : String?
    public let hash : String?
    public let status : String?
    public let txn : PendingTransactionsForAccountTxnResponse?
    public let type : String?
    public let updated_at : String?

    enum CodingKeys: String, CodingKey {
        case created_at = "created_at"
        case failed_reason = "failed_reason"
        case hash = "hash"
        case status = "status"
        case txn = "txn"
        case type = "type"
        case updated_at = "updated_at"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        failed_reason = try values.decodeIfPresent(String.self, forKey: .failed_reason)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        txn = try values.decodeIfPresent(PendingTransactionsForAccountTxnResponse.self, forKey: .txn)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
    }
}

public struct PendingTransactionsForAccountTxnResponse : Codable {
    public let fee : Int?
    public let nonce : Int?
    public let payer : String?
    public let payments : [PendingTransactionsForAccountPaymentsResponse]?
    public let signature : String?

    enum CodingKeys: String, CodingKey {
        case fee = "fee"
        case nonce = "nonce"
        case payer = "payer"
        case payments = "payments"
        case signature = "signature"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        payer = try values.decodeIfPresent(String.self, forKey: .payer)
        payments = try values.decodeIfPresent([PendingTransactionsForAccountPaymentsResponse].self, forKey: .payments)
        signature = try values.decodeIfPresent(String.self, forKey: .signature)
    }
}

public struct PendingTransactionsForAccountPaymentsResponse : Codable {
    public let amount : Int?
    public let payee : String?

    enum CodingKeys: String, CodingKey {
        case amount = "amount"
        case payee = "payee"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
        payee = try values.decodeIfPresent(String.self, forKey: .payee)
    }
}
