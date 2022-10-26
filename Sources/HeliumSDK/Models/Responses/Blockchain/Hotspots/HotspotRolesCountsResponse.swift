//
//  HotspotRolesCountsResponse.swift
//  
//
//  Created by Burak Colak on 19.10.2022.
//

public struct HotspotRolesCountsResponse : Codable {
    public let data : HotspotRolesCountsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(HotspotRolesCountsDataResponse.self, forKey: .data)
    }
}

public struct HotspotRolesCountsDataResponse: Codable {
    public let assert_location_v1 : Int?

    enum CodingKeys: String, CodingKey {
        case assert_location_v1 = "assert_location_v1"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        assert_location_v1 = try values.decodeIfPresent(Int.self, forKey: .assert_location_v1)
    }
}
