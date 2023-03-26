//
//  ConsoleRoutes.swift
//
//
//  Created by Burak Colak on 14.10.2022.
//

enum ConsoleRoutes {
    static let dataCreditBalance = BaseRoute(method: .get, path: "api/v1/organization")
    static let devicesList = BaseRoute(method: .get, path: "api/v1/devices")
    static let devicesByAppEuiAppKeyDevEui = BaseRoute(method: .get, path: "api/v1/devices")
    static let deviceByUUID = BaseRoute(method: .get, path: "api/v1/devices/%@")
    static let deviceEvents = BaseRoute(method: .get, path: "api/v1/devices/%@/events")
    static let deviceIntegrationEvents = BaseRoute(method: .get, path: "api/v1/devices/%@/events?sub_category=uplink_integration_req")
    static let createDevice = BaseRoute(method: .post, path: "api/v1/devices")
    static let deleteDeviceByUUID = BaseRoute(method: .delete, path: "api/v1/devices/%@")
    static let labels = BaseRoute(method: .get, path: "api/v1/labels")
    static let createLabel = BaseRoute(method: .get, path: "api/v1/labels")
    static let deleteLabel = BaseRoute(method: .get, path: "api/v1/labels/%@")
    static let searchForLabel = BaseRoute(method: .get, path: "api/v1/labels/%@")
    static let addDeviceLabel = BaseRoute(method: .get, path: "api/v1/devices/%@/labels")
    static let removeDeviceLabel = BaseRoute(method: .get, path: "api/v1/devices/%@/labels/:label_id")
    static let createAPrebuiltIntegration = BaseRoute(method: .get, path: "api/v1/integrations/prebuilt")
    static let createACustomHTTPIntegration = BaseRoute(method: .get, path: "api/v1/integrations")
    static let createACustomMQTTIntegration = BaseRoute(method: .get, path: "api/v1/integrations")
    static let createACustomAzureIoTHubIntegration = BaseRoute(method: .get, path: "api/v1/integrations")
    static let createACustomAWSIoTCoreIntegration = BaseRoute(method: .get, path: "api/v1/integrations")
    static let deleteAnIntegration = BaseRoute(method: .get, path: "api/v1/integrations/%@")
    static let listIntegrations = BaseRoute(method: .get, path: "api/v1/integrations")
    static let searchForAnIntegrationByUUID = BaseRoute(method: .get, path: "api/v1/integrations/%@")
    static let searchForAnIntegrationByName = BaseRoute(method: .get, path: "api/v1/integrations?name=%@")
    static let viewAllFlowsForAnIntegration = BaseRoute(method: .get, path: "api/v1/flows?integration_id=%@")
    static let createAFlowForAnIntegration = BaseRoute(method: .get, path: "api/v1/flows")
    static let deleteFlow = BaseRoute(method: .get, path: "api/v1/flows/%@")
    static let updateDeviceConfigProfile = BaseRoute(method: .get, path: "api/v1/devices/%@")
    static let updateLabelConfigProfile = BaseRoute(method: .get, path: "api/v1/labels/%@")
    static let updateDeviceActiveStatus = BaseRoute(method: .get, path: "api/v1/devices/%@")
    static let updateDevicesActiveStatus = BaseRoute(method: .get, path: "api/v1/devices/active?dev_eui=%@")
    static let updateDevicesAttachedToLabelActiveStatus = BaseRoute(method: .get, path: "api/v1/labels/%@/active")
}
