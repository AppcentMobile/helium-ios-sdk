//
//  RolesCountsForAccountResponse.swift
//


public struct RolesCountsForAccountResponse: Codable {
    public let data: RolesCountsForAccountDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(RolesCountsForAccountDataResponse.self, forKey: .data)
    }
}

public struct RolesCountsForAccountDataResponse: Codable {
    public let add_gateway_v1: Int?
    public let assert_location_v1: Int?

    enum CodingKeys: String, CodingKey {
        case add_gateway_v1
        case assert_location_v1
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        add_gateway_v1 = try values.decodeIfPresent(Int.self, forKey: .add_gateway_v1)
        assert_location_v1 = try values.decodeIfPresent(Int.self, forKey: .assert_location_v1)
    }
}
