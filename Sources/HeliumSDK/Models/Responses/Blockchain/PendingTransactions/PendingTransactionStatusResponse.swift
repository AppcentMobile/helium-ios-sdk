//
//  PendingTransactionStatusResponse.swift
//

public struct PendingTransactionStatusResponse: Codable {
    public let data: [PendingTransactionStatusDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([PendingTransactionStatusDataResponse].self, forKey: .data)
    }
}

public struct PendingTransactionStatusDataResponse: Codable {
    public let updated_at: String?
    public let type: String?
    public let txn: PendingTransactionStatusTxnResponse?
    public let status: String?
    public let hash: String?
    public let failed_reason: String?
    public let created_at: String?

    enum CodingKeys: String, CodingKey {
        case updated_at
        case type
        case txn
        case status
        case hash
        case failed_reason
        case created_at
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        txn = try values.decodeIfPresent(PendingTransactionStatusTxnResponse.self, forKey: .txn)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        failed_reason = try values.decodeIfPresent(String.self, forKey: .failed_reason)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
    }
}

public struct PendingTransactionStatusTxnResponse: Codable {
    public let type: String?
    public let payments: [PendingTransactionStatusPaymentsResponse]?
    public let payer: String?
    public let nonce: Int?
    public let hash: String?
    public let fee: Int?

    enum CodingKeys: String, CodingKey {
        case type
        case payments
        case payer
        case nonce
        case hash
        case fee
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        payments = try values.decodeIfPresent([PendingTransactionStatusPaymentsResponse].self, forKey: .payments)
        payer = try values.decodeIfPresent(String.self, forKey: .payer)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
    }
}

public struct PendingTransactionStatusPaymentsResponse: Codable {
    public let payee: String?
    public let amount: Int?

    enum CodingKeys: String, CodingKey {
        case payee
        case amount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        payee = try values.decodeIfPresent(String.self, forKey: .payee)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
    }
}
