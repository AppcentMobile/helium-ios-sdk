//
//  GetPredictedHNTOraclePricesResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

public struct GetPredictedHNTOraclePricesResponse : Codable {
    public let data : GetPredictedHNTOraclePricesDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(GetPredictedHNTOraclePricesDataResponse.self, forKey: .data)
    }
}

public struct GetPredictedHNTOraclePricesDataResponse : Codable {
    public let price : Int?
    public let time : Int?

    enum CodingKeys: String, CodingKey {
        case price = "price"
        case time = "time"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
    }
}
