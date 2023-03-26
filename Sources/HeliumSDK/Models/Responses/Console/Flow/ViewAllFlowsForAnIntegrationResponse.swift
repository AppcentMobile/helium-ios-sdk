//
//  ViewAllFlowsForAnIntegrationResponse.swift
//
//
//  Created by Burak Colak on 24.10.2022.
//

public struct ViewAllFlowsForAnIntegrationResponse: Codable {
    public let device_id: String?
    public let function_id: String?
    public let id: String?
    public let integration_id: String?
    public let label_id: String?
    public let organization_id: String?

    enum CodingKeys: String, CodingKey {
        case device_id
        case function_id
        case id
        case integration_id
        case label_id
        case organization_id
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        device_id = try values.decodeIfPresent(String.self, forKey: .device_id)
        function_id = try values.decodeIfPresent(String.self, forKey: .function_id)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        integration_id = try values.decodeIfPresent(String.self, forKey: .integration_id)
        label_id = try values.decodeIfPresent(String.self, forKey: .label_id)
        organization_id = try values.decodeIfPresent(String.self, forKey: .organization_id)
    }
}
