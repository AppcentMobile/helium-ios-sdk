//
//  ConsoleManager+Label.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

extension HeliumConsoleManager {
    public func labels(onSuccess: ConsoleCallbacks.DevicesList, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.devicesList.consoleEndpoint()

        self.request(to: endpoint) { (r: BaseResult<DevicesListResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func createLabel(name: String, config_profile_id: String? = nil, onSuccess: ConsoleCallbacks.CreateLabel, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateLabelRequest(name: name, config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.devicesByAppEuiAppKeyDevEui.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func deleteLabel(device_id: String, onSuccess: ConsoleCallbacks.DeleteLabel, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteLabel.consoleEndpoint(device_id)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func searchForLabel(query: String, onSuccess: ConsoleCallbacks.SearchForLabel, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.searchForLabel.consoleEndpoint(query)

        self.request(to: endpoint) { (r: BaseResult<SearchForLabelResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func addDeviceLabel(device_id: String, label: String, onSuccess: ConsoleCallbacks.AddDeviceLabel, onError: GenericCallbacks.ErrorCallback) {
        let request = AddDeviceLabelRequest(label: label)
        let endpoint = ConsoleRoutes.addDeviceLabel.consoleEndpoint(device_id, params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func removeDeviceLabel(device_id: String, label_id: String, onSuccess: ConsoleCallbacks.RemoveDeviceLabel, onError: GenericCallbacks.ErrorCallback) {
        let route = ConsoleRoutes.removeDeviceLabel
        let endpoint = BaseEndpoint(path: String(format: route.path, device_id, label_id), method: route.method)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }
}
