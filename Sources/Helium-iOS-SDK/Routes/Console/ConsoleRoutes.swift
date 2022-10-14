//
//  ConsoleRoutes.swift
//  
//
//  Created by Burak Colak on 14.10.2022.
//

import UIKit

struct ConsoleRoutes {

    static let dataCreditBalance = "api/v1/organization"
    static let devicesList = "api/v1/devices"
    static let devicesByAppEuiAppKeyDevEui = "api/v1/devices"
    static let deviceByUUID = "api/v1/devices/%@"
    static let deviceEvents = "api/v1/devices/%@/events"
    static let deviceIntegrationEvents = "api/v1/devices/%@/events?sub_category=uplink_integration_req"

    @available(*, deprecated, message: "This endpoint is disabled for Helium Foundation Console.")
    static let createDevice = "api/v1/devices"

    static let deleteDeviceByUUID = "api/v1/devices/%@"
    static let labels = "api/v1/labels"
    static let createLabel = "api/v1/labels"
    static let deleteLabel = "api/v1/labels/%@"
    static let searchForLabel = "api/v1/labels/%@"
    static let addDeviceLabel = "api/v1/devices/%@/labels"
    static let removeDeviceLabel = "api/v1/devices/%@/labels/:label_id"
    static let createAPrebuiltIntegration = "api/v1/integrations/prebuilt"
    static let createACustomHTTPIntegration = "api/v1/integrations"
    static let createACustomMQTTIntegration = "api/v1/integrations"
    static let createACustomAzureIoTHubIntegration = "api/v1/integrations"
    static let createACustomAWSIoTCoreIntegration = "api/v1/integrations"
    static let deleteAnIntegration = "api/v1/integrations/%@"
    static let listIntegrations = "api/v1/integrations"
    static let searchForAnIntegrationByUUID = "api/v1/integrations/%@"
    static let searchForAnIntegrationByName = "api/v1/integrations?name=%@"
    static let viewAllFlowsForAnIntegration = "api/v1/flows?integration_id=%@"
    static let createAFlowForAnIntegration = "api/v1/flows"
    static let deleteFlow = "api/v1/flows/%@"
    static let updateDeviceConfigProfile = "api/v1/devices/%@"
    static let updateLabelConfigProfile = "api/v1/labels/%@"
    static let updateDeviceActiveStatus = "api/v1/devices/%@"
    static let updateDevicesActiveStatus = "api/v1/devices/active?dev_eui=%@"
    static let updateDevicesAttachedToLabelActiveStatus = "api/v1/labels/%@/active"

}
