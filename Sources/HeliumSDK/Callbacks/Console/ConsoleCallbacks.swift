//
//  ConsoleCallbacks.swift
//
//
//  Created by Burak Colak on 21.10.2022.
//

public struct ConsoleCallbacks {}

public extension ConsoleCallbacks {
    // MARK: Data credit balance

    typealias DataCreditBalance = ((DataCreditBalanceResponse?) -> Void)?
}

public extension ConsoleCallbacks {
    // MARK: Devices

    typealias DevicesList = ((DevicesListResponse?) -> Void)?
    typealias DevicesByAppEuiAppKeyDevEui = ((DevicesByAppEuiAppKeyDevEuiResponse?) -> Void)?
    typealias DeviceByUUID = ((DeviceByUUIDResponse?) -> Void)?
    typealias DeviceEvents = ((DeviceEventsResponse?) -> Void)?
    typealias DeviceIntegrationEvents = ((DeviceIntegrationEventsResponse?) -> Void)?
    typealias CreateDevice = ((Bool?) -> Void)?
    typealias DeleteDeviceByUUID = ((Bool?) -> Void)?
}

public extension ConsoleCallbacks {
    // MARK: Labels

    typealias Labels = ((LabelsResponse?) -> Void)?
    typealias CreateLabel = ((Bool?) -> Void)?
    typealias DeleteLabel = ((Bool?) -> Void)?
    typealias SearchForLabel = ((SearchForLabelResponse?) -> Void)?
    typealias AddDeviceLabel = ((Bool?) -> Void)?
    typealias RemoveDeviceLabel = ((Bool?) -> Void)?
}

public extension ConsoleCallbacks {
    // MARK: Integration

    typealias CreateAPrebuiltIntegration = ((CreateAPrebuiltIntegrationResponse?) -> Void)?
    typealias CreateACustomHTTPIntegration = ((CreateACustomHTTPIntegrationResponse?) -> Void)?
    typealias CreateACustomMQTTIntegration = ((CreateACustomMQTTIntegrationResponse?) -> Void)?
    typealias CreateACustomAzureIoTHubIntegration = ((CreateACustomAzureIoTHubIntegrationResponse?) -> Void)?
    typealias CreateACustomAWSIoTCoreIntegration = ((CreateACustomAWSIoTCoreIntegrationResponse?) -> Void)?
    typealias DeleteAnIntegration = ((Bool?) -> Void)?
    typealias ListIntegrations = ((ListIntegrationsResponse?) -> Void)?
    typealias SearchForAnIntegrationByUUID = ((SearchForAnIntegrationByUUIDResponse?) -> Void)?
    typealias SearchForAnIntegrationByName = ((SearchForAnIntegrationByNameResponse?) -> Void)?
}

public extension ConsoleCallbacks {
    // MARK: Flow

    typealias ViewAllFlowsForAnIntegration = ((ViewAllFlowsForAnIntegrationResponse?) -> Void)?
    typealias CreateAFlowForAnIntegration = ((CreateAFlowForAnIntegrationResponse?) -> Void)?
    typealias DeleteFlow = ((Bool?) -> Void)?
}

public extension ConsoleCallbacks {
    // MARK: Config

    typealias UpdateDeviceConfigProfile = ((Bool?) -> Void)?
    typealias UpdateLabelConfigProfile = ((Bool?) -> Void)?
}
