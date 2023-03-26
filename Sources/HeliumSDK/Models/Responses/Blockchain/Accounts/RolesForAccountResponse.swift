//
//  RolesForAccountResponse.swift
//

public struct RolesForAccountResponse: Codable {
    public let data: [RolesForAccountDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([RolesForAccountDataResponse].self, forKey: .data)
    }
}

public struct RolesForAccountDataResponse: Codable {
    public let type: String?
    public let time: Int?
    public let role: String?
    public let height: Int?
    public let hash: String?

    enum CodingKeys: String, CodingKey {
        case type
        case time
        case role
        case height
        case hash
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        role = try values.decodeIfPresent(String.self, forKey: .role)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
    }
}
