//
//  ConsoleManager+Flow.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

extension ConsoleManager {
    public func viewAllFlowsForAnIntegration(integration_id: String, onSuccess: ConsoleCallbacks.ViewAllFlowsForAnIntegration, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.viewAllFlowsForAnIntegration.consoleEndpoint(integration_id)

        self.request(to: endpoint) { (r: BaseResult<ViewAllFlowsForAnIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
    
    public func createAFlowForAnIntegration(integration_id: String, device_id: String, function_id: String, onSuccess: ConsoleCallbacks.CreateAFlowForAnIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateAFlowForAnIntegrationRequest(integration_id: integration_id, device_id: device_id, function_id: function_id)
        let endpoint = ConsoleRoutes.createAFlowForAnIntegration.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { (r: BaseResult<CreateAFlowForAnIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func deleteFlow(flow_id: String, onSuccess: ConsoleCallbacks.DeleteFlow, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteFlow.consoleEndpoint(flow_id)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }
}
