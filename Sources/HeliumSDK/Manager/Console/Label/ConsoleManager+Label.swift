//
//  ConsoleManager+Label.swift
//
//
//  Created by Burak Colak on 24.10.2022.
//

public extension HeliumConsoleManager {
    func labels(onSuccess: ConsoleCallbacks.DevicesList, onError: GenericCallbacks.ErrorCallback) {
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

    func createLabel(name: String, config_profile_id: String? = nil, onSuccess: ConsoleCallbacks.CreateLabel, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateLabelRequest(name: name, config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.devicesByAppEuiAppKeyDevEui.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            } else {
                onSuccess?(success)
            }
        }
    }

    func deleteLabel(device_id: String, onSuccess: ConsoleCallbacks.DeleteLabel, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteLabel.consoleEndpoint(device_id)

        request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            } else {
                onSuccess?(success)
            }
        }
    }

    func searchForLabel(query: String, onSuccess: ConsoleCallbacks.SearchForLabel, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.searchForLabel.consoleEndpoint(query)

        request(to: endpoint) { (r: BaseResult<SearchForLabelResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    func addDeviceLabel(device_id: String, label: String, onSuccess: ConsoleCallbacks.AddDeviceLabel, onError: GenericCallbacks.ErrorCallback) {
        let request = AddDeviceLabelRequest(label: label)
        let endpoint = ConsoleRoutes.addDeviceLabel.consoleEndpoint(device_id, params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            } else {
                onSuccess?(success)
            }
        }
    }

    func removeDeviceLabel(device_id: String, label_id: String, onSuccess: ConsoleCallbacks.RemoveDeviceLabel, onError: GenericCallbacks.ErrorCallback) {
        let route = ConsoleRoutes.removeDeviceLabel
        let endpoint = BaseEndpoint(path: String(format: route.path, device_id, label_id), method: route.method)

        request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            } else {
                onSuccess?(success)
            }
        }
    }
}
