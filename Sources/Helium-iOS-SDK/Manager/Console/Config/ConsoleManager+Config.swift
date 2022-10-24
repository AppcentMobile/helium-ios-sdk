//
//  ConsoleManager+Config.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

extension ConsoleManager {
    public func updateDeviceConfigProfile(id: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteDeviceByUUID.consoleEndpoint(id)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func updateLabelConfigProfile(id: String, onSuccess: ConsoleCallbacks.DeleteDeviceByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteDeviceByUUID.consoleEndpoint(id)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }
}
