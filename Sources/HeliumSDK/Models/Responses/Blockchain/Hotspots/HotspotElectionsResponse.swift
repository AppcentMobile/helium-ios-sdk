//
//  HotspotElectionsResponse.swift
//

public struct HotspotElectionsResponse: Codable {
    public let data: [HotspotElectionsDataResponse]?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent([HotspotElectionsDataResponse].self, forKey: .data)
    }
}

public struct HotspotElectionsDataResponse: Codable {
    public let delay: Int?
    public let hash: String?
    public let height: Int?
    public let members: [String]?
    public let proof: String?
    public let time: Int?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case delay
        case hash
        case height
        case members
        case proof
        case time
        case type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        delay = try values.decodeIfPresent(Int.self, forKey: .delay)
        hash = try values.decodeIfPresent(String.self, forKey: .hash)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        members = try values.decodeIfPresent([String].self, forKey: .members)
        proof = try values.decodeIfPresent(String.self, forKey: .proof)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}
