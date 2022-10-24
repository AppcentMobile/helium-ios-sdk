//
//  ConsoleManager+Status.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

extension ConsoleManager {
    public func updateDeviceActiveStatus(device_id: String, active: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceActiveStatusRequest(active: active)
        let endpoint = ConsoleRoutes.updateDeviceActiveStatus.consoleEndpoint(device_id, params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func updateDevicesActiveStatus(dev_eui: String, app_eui: String, app_key: String, active: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceActiveStatusRequest(active: active)
        var endpoint = ConsoleRoutes.updateDevicesActiveStatus.consoleEndpoint(params: request.dictionary)

        endpoint.queryItems = [
            URLQueryItem(name: "dev_eui", value: dev_eui),
            URLQueryItem(name: "app_eui", value: app_eui),
            URLQueryItem(name: "app_key", value: app_key)
        ]

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func updateDevicesAttachedToLabelActiveStatus(label_id: String, active: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDevicesAttachedToLabelActiveStatusRequest(active: active)
        let endpoint = ConsoleRoutes.updateDevicesAttachedToLabelActiveStatus.consoleEndpoint(label_id, params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }
}
