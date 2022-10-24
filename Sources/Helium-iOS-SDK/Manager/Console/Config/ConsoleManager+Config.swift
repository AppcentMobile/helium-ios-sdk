//
//  ConsoleManager+Config.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

extension ConsoleManager {
    public func updateDeviceConfigProfile(device_id: String, config_profile_id: String, onSuccess: ConsoleCallbacks.UpdateDeviceConfigProfile, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceConfigProfileRequest(config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.updateDeviceConfigProfile.consoleEndpoint(device_id, params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func updateLabelConfigProfile(label_id: String, config_profile_id: String, onSuccess: ConsoleCallbacks.UpdateLabelConfigProfile, onError: GenericCallbacks.ErrorCallback) {
        let request = UpdateDeviceConfigProfileRequest(config_profile_id: config_profile_id)
        let endpoint = ConsoleRoutes.updateLabelConfigProfile.consoleEndpoint(label_id, params: request.dictionary)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }
}
