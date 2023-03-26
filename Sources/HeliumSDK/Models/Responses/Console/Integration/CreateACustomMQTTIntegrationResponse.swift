//
//  CreateACustomMQTTIntegrationResponse.swift
//

public struct CreateACustomMQTTIntegrationResponse: Codable {
    public let devices: [String]?
    public let id: String?
    public let labels: [String]?
    public let name: String?

    enum CodingKeys: String, CodingKey {
        case devices
        case id
        case labels
        case name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        devices = try values.decodeIfPresent([String].self, forKey: .devices)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        labels = try values.decodeIfPresent([String].self, forKey: .labels)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
