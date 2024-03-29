//
//  BlocksHeightResponse.swift
//

public struct BlocksHeightResponse: Codable {
    public let data: [BlocksHeightDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([BlocksHeightDataResponse].self, forKey: .data)
    }
}

public struct BlocksHeightDataResponse: Codable {
    public let height: Int?

    enum CodingKeys: String, CodingKey {
        case height
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
    }
}
