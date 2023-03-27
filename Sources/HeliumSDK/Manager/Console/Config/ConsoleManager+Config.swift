//
//  ConsoleManager+Config.swift
//

import ACMNetworking

public extension HeliumConsoleManager {
    func updateDeviceConfigProfile(device_id: String, config_profile_id: String, onSuccess: ConsoleCallbacks.UpdateDeviceConfigProfile, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceConfigProfileRequest(config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.updateDeviceConfigProfile.consoleEndpoint(with: acmEndpoint, value: device_id, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func updateLabelConfigProfile(label_id: String, config_profile_id: String, onSuccess: ConsoleCallbacks.UpdateLabelConfigProfile, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceConfigProfileRequest(config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.updateLabelConfigProfile.consoleEndpoint(with: acmEndpoint, value: label_id, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
