//
//  ConsoleManager+Status.swift
//

import ACMNetworking
import Foundation

public extension HeliumConsoleManager {
    func updateDeviceActiveStatus(device_id: String, active: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceActiveStatusRequest(active: active)
        let endpoint = ConsoleRoutes.updateDeviceActiveStatus.consoleEndpoint(device_id, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func updateDevicesActiveStatus(dev_eui: String, app_eui: String, app_key: String, active: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceActiveStatusRequest(active: active)
        let endpoint = ConsoleRoutes.updateDevicesActiveStatus.consoleEndpoint(params: request.dictionary)
            .add(queryItem: ACMQueryModel(name: "dev_eui", value: dev_eui))
            .add(queryItem: ACMQueryModel(name: "app_eui", value: app_eui))
            .add(queryItem: ACMQueryModel(name: "app_key", value: app_key))

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func updateDevicesAttachedToLabelActiveStatus(label_id: String, active: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDevicesAttachedToLabelActiveStatusRequest(active: active)
        let endpoint = ConsoleRoutes.updateDevicesAttachedToLabelActiveStatus.consoleEndpoint(label_id, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
