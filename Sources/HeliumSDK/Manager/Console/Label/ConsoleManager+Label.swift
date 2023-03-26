//
//  ConsoleManager+Label.swift
//

import ACMNetworking

public extension HeliumConsoleManager {
    func labels(onSuccess: ConsoleCallbacks.DevicesList, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.devicesList.consoleEndpoint()

        network.request(to: endpoint.build()) { (r: DevicesListResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func createLabel(name: String, config_profile_id: String? = nil, onSuccess: ConsoleCallbacks.CreateLabel, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateLabelRequest(name: name, config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.devicesByAppEuiAppKeyDevEui.consoleEndpoint(params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deleteLabel(device_id: String, onSuccess: ConsoleCallbacks.DeleteLabel, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteLabel.consoleEndpoint(device_id)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func searchForLabel(query: String, onSuccess: ConsoleCallbacks.SearchForLabel, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.searchForLabel.consoleEndpoint(query)

        network.request(to: endpoint.build()) { (r: SearchForLabelResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func addDeviceLabel(device_id: String, label: String, onSuccess: ConsoleCallbacks.AddDeviceLabel, onError: GenericCallbacks.ErrorCallback) {
        let request = AddDeviceLabelRequest(label: label)
        let endpoint = ConsoleRoutes.addDeviceLabel.consoleEndpoint(device_id, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func removeDeviceLabel(device_id: String, label_id: String, onSuccess: ConsoleCallbacks.RemoveDeviceLabel, onError: GenericCallbacks.ErrorCallback) {
        let route = ConsoleRoutes.removeDeviceLabel

        let endpoint = ACMEndpoint()
            .set(method: route.method)
            .set(path: String(format: route.path, device_id, label_id))

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
