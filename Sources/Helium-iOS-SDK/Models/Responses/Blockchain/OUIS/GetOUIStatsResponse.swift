//
//  GetOUIStatsResponse.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

public struct GetOUIStatsResponse : Codable {
    public let data : GetOUIStatsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(GetOUIStatsDataResponse.self, forKey: .data)
    }
}

public struct GetOUIStatsDataResponse : Codable {
    public let count : Int?

    enum CodingKeys: String, CodingKey {
        case count = "count"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        count = try values.decodeIfPresent(Int.self, forKey: .count)
    }
}
