//
//  CurrentOraclePriceResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

public struct CurrentOraclePriceResponse : Codable {
    public let data : CurrentOraclePriceDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(CurrentOraclePriceDataResponse.self, forKey: .data)
    }
}

public struct CurrentOraclePriceDataResponse : Codable {
    public let price : Int?
    public let block : Int?

    enum CodingKeys: String, CodingKey {
        case price = "price"
        case block = "block"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        block = try values.decodeIfPresent(Int.self, forKey: .block)
    }
}
