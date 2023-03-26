//
//  ConsoleManager+Device.swift
//
//
//  Created by Burak Colak on 23.10.2022.
//

import Foundation

public extension HeliumConsoleManager {
    func devicesList(onSuccess: ConsoleCallbacks.DevicesList, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.devicesList.consoleEndpoint()

        request(to: endpoint) { (r: BaseResult<DevicesListResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    func devicesByAppEuiAppKeyDevEui(dev_eui: String, app_eui: String, app_key: String, onSuccess: ConsoleCallbacks.DevicesByAppEuiAppKeyDevEui, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ConsoleRoutes.devicesByAppEuiAppKeyDevEui.consoleEndpoint()

        endpoint.queryItems = [
            URLQueryItem(name: "dev_eui", value: dev_eui),
            URLQueryItem(name: "app_eui", value: app_eui),
            URLQueryItem(name: "app_key", value: app_key),
        ]

        request(to: endpoint) { (r: BaseResult<DevicesByAppEuiAppKeyDevEuiResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    func deviceByUUID(device_id: String, onSuccess: ConsoleCallbacks.DeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deviceByUUID.consoleEndpoint(device_id)

        request(to: endpoint) { (r: BaseResult<DeviceByUUIDResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    func deviceEvents(device_id: String, onSuccess: ConsoleCallbacks.DeviceEvents, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deviceEvents.consoleEndpoint(device_id)

        request(to: endpoint) { (r: BaseResult<DeviceEventsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    func deviceIntegrationEvents(device_id: String, onSuccess: ConsoleCallbacks.DeviceIntegrationEvents, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deviceIntegrationEvents.consoleEndpoint(device_id)

        request(to: endpoint) { (r: BaseResult<DeviceIntegrationEventsResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    @available(*, deprecated, message: "This endpoint is disabled for Helium Foundation Console.")
    func createDevice(name: String, app_eui: String, app_key: String, dev_eui: String, config_profile_id: String? = nil, label_ids: [String]? = nil, onSuccess: ConsoleCallbacks.CreateDevice, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateDeviceRequest(name: name, app_eui: app_eui, app_key: app_key, dev_eui: dev_eui, config_profile_id: config_profile_id, label_ids: label_ids)
        let endpoint = ConsoleRoutes.createDevice.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            } else {
                onSuccess?(success)
            }
        }
    }

    func deleteDeviceByUUID(id: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteDeviceByUUID.consoleEndpoint(id)

        request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            } else {
                onSuccess?(success)
            }
        }
    }
}
