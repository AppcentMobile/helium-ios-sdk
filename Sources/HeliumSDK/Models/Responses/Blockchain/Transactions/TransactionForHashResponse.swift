//
//  TransactionForHashResponse.swift
//


public struct TransactionForHashResponse: Codable {
    public let data: TransactionForHashDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(TransactionForHashDataResponse.self, forKey: .data)
    }
}

public struct TransactionForHashDataResponse: Codable {
    public let type: String?
    public let time: Int?
    public let payments: [TransactionForHashPaymentsResponse]?
    public let payer: String?
    public let nonce: Int?
    public let height: Int?
    public let hash: String?
    public let fee: Int?

    enum CodingKeys: String, CodingKey {
        case type
        case time
        case payments
        case payer
        case nonce
        case height
        case hash
        case fee
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        payments = try values.decodeIfPresent([TransactionForHashPaymentsResponse].self, forKey: .payments)
        payer = try values.decodeIfPresent(String.self, forKey: .payer)
        nonce = try values.decodeIfPresent(Int.self, forKey: .nonce)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        fee = try values.decodeIfPresent(Int.self, forKey: .fee)
    }
}

public struct TransactionForHashPaymentsResponse: Codable {
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
