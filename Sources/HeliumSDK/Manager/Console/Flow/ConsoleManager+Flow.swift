//
//  ConsoleManager+Flow.swift
//

import ACMNetworking

public extension HeliumConsoleManager {
    func viewAllFlowsForAnIntegration(integration_id: String, onSuccess: ConsoleCallbacks.ViewAllFlowsForAnIntegration, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.viewAllFlowsForAnIntegration.consoleEndpoint(integration_id)

        network.request(to: endpoint.build()) { (r: ViewAllFlowsForAnIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func createAFlowForAnIntegration(integration_id: String, device_id: String, function_id: String, onSuccess: ConsoleCallbacks.CreateAFlowForAnIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateAFlowForAnIntegrationRequest(integration_id: integration_id, device_id: device_id, function_id: function_id)
        let endpoint = ConsoleRoutes.createAFlowForAnIntegration.consoleEndpoint(params: request.dictionary)

        network.request(to: endpoint.build()) { (r: CreateAFlowForAnIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deleteFlow(flow_id: String, onSuccess: ConsoleCallbacks.DeleteFlow, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteFlow.consoleEndpoint(flow_id)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
