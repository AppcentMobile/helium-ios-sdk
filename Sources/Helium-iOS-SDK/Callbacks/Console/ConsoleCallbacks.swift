//
//  ConsoleCallbacks.swift
//  
//
//  Created by Burak Colak on 21.10.2022.
//

public struct ConsoleCallbacks {}

extension ConsoleCallbacks {
    //MARK: Data credit balance
    public typealias DataCreditBalance = ((DataCreditBalanceResponse?) -> ())?
}

extension ConsoleCallbacks {
    //MARK: Devices
    public typealias DevicesList = ((DevicesListResponse?) -> ())?
    public typealias DevicesByAppEuiAppKeyDevEui = ((DevicesByAppEuiAppKeyDevEuiResponse?) -> ())?
    public typealias DeviceByUUID = ((DeviceByUUIDResponse?) -> ())?
    public typealias DeviceEvents = ((DeviceEventsResponse?) -> ())?
    public typealias DeviceIntegrationEvents = ((DeviceIntegrationEventsResponse?) -> ())?
    public typealias CreateDevice = ((Bool?) -> ())?
    public typealias DeleteDeviceByUUID = ((Bool?) -> ())?
}

extension ConsoleCallbacks {
    //MARK: Labels
    public typealias Labels = ((LabelsResponse?) -> ())?
    public typealias CreateLabel = ((Bool?) -> ())?
    public typealias DeleteLabel = ((Bool?) -> ())?
    public typealias SearchForLabel = ((SearchForLabelResponse?) -> ())?
    public typealias AddDeviceLabel = ((Bool?) -> ())?
    public typealias RemoveDeviceLabel = ((Bool?) -> ())?
}

extension ConsoleCallbacks {
    //MARK: Integration
    public typealias CreateAPrebuiltIntegration = ((CreateAPrebuiltIntegrationResponse?) -> ())?
    public typealias CreateACustomHTTPIntegration = ((CreateACustomHTTPIntegrationResponse?) -> ())?
    public typealias CreateACustomMQTTIntegration = ((CreateACustomMQTTIntegrationResponse?) -> ())?
    public typealias CreateACustomAzureIoTHubIntegration = ((CreateACustomAzureIoTHubIntegrationResponse?) -> ())?
    public typealias CreateACustomAWSIoTCoreIntegration = ((CreateACustomAWSIoTCoreIntegrationResponse?) -> ())?
    public typealias DeleteAnIntegration = ((Bool?) -> ())?
    public typealias ListIntegrations = ((ListIntegrationsResponse?) -> ())?
    public typealias SearchForAnIntegrationByUUID = ((SearchForAnIntegrationByUUIDResponse?) -> ())?
    public typealias SearchForAnIntegrationByName = ((SearchForAnIntegrationByNameResponse?) -> ())?
}

extension ConsoleCallbacks {
    //MARK: Flow
    public typealias ViewAllFlowsForAnIntegration = ((ViewAllFlowsForAnIntegrationResponse?) -> ())?
    public typealias CreateAFlowForAnIntegration = ((CreateAFlowForAnIntegrationResponse?) -> ())?
    public typealias DeleteFlow = ((Bool?) -> ())?
}
