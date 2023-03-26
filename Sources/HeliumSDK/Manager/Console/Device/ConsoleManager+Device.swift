//
//  ConsoleManager+Device.swift
//

import ACMNetworking
import Foundation

public extension HeliumConsoleManager {
    func devicesList(onSuccess: ConsoleCallbacks.DevicesList, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.devicesList.consoleEndpoint()

        network.request(to: endpoint.build()) { (r: DevicesListResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func devicesByAppEuiAppKeyDevEui(dev_eui: String, app_eui: String, app_key: String, onSuccess: ConsoleCallbacks.DevicesByAppEuiAppKeyDevEui, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.devicesByAppEuiAppKeyDevEui.consoleEndpoint()
            .add(queryItems: [
                ACMQueryModel(name: "dev_eui", value: dev_eui),
                ACMQueryModel(name: "app_eui", value: app_eui),
                ACMQueryModel(name: "app_key", value: app_key),
            ])

        network.request(to: endpoint.build()) { (r: DevicesByAppEuiAppKeyDevEuiResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deviceByUUID(device_id: String, onSuccess: ConsoleCallbacks.DeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deviceByUUID.consoleEndpoint(device_id)

        network.request(to: endpoint.build()) { (r: DeviceByUUIDResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deviceEvents(device_id: String, onSuccess: ConsoleCallbacks.DeviceEvents, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deviceEvents.consoleEndpoint(device_id)

        network.request(to: endpoint.build()) { (r: DeviceEventsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deviceIntegrationEvents(device_id: String, onSuccess: ConsoleCallbacks.DeviceIntegrationEvents, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deviceIntegrationEvents.consoleEndpoint(device_id)

        network.request(to: endpoint.build()) { (r: DeviceIntegrationEventsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    @available(*, deprecated, message: "This endpoint is disabled for Helium Foundation Console.")
    func createDevice(name: String, app_eui: String, app_key: String, dev_eui: String, config_profile_id: String? = nil, label_ids: [String]? = nil, onSuccess: ConsoleCallbacks.CreateDevice, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateDeviceRequest(name: name, app_eui: app_eui, app_key: app_key, dev_eui: dev_eui, config_profile_id: config_profile_id, label_ids: label_ids)
        let endpoint = ConsoleRoutes.createDevice.consoleEndpoint(params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deleteDeviceByUUID(id: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteDeviceByUUID.consoleEndpoint(id)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
