//
//  ConsoleManager+Integration.swift
//

import ACMNetworking

public extension HeliumConsoleManager {
    func createAPrebuiltIntegration(token: String, name: String, type: String, onSuccess: ConsoleCallbacks.CreateAPrebuiltIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateAPrebuiltIntegrationRequest(token: token, name: name, type: type)
        let endpoint = ConsoleRoutes.createAPrebuiltIntegration.consoleEndpoint(with: acmEndpoint, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: CreateAPrebuiltIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func createACustomHTTPIntegration(name: String, type: String, endpoint: String, method: String, headers: String? = nil, url_params: String? = nil, onSuccess: ConsoleCallbacks.CreateACustomHTTPIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomHTTPIntegrationRequest(name: name, type: type, endpoint: endpoint, method: method, headers: headers, url_params: url_params)
        let endpoint = ConsoleRoutes.createACustomHTTPIntegration.consoleEndpoint(with: acmEndpoint, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: CreateACustomHTTPIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func createACustomMQTTIntegration(name: String, type: String, endpoint: String, uplink_topic: String, downlink_topic: String, onSuccess: ConsoleCallbacks.CreateACustomMQTTIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomMQTTIntegrationRequest(name: name, type: type, endpoint: endpoint, uplink_topic: uplink_topic, downlink_topic: downlink_topic)
        let endpoint = ConsoleRoutes.createACustomMQTTIntegration.consoleEndpoint(with: acmEndpoint, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: CreateACustomMQTTIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func createACustomAzureIoTHubIntegration(name: String, type: String, azure_policy_name: String, azure_hub_name: String, azure_primary_key: String, onSuccess: ConsoleCallbacks.CreateACustomAzureIoTHubIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomAzureIoTHubIntegrationRequest(name: name, type: type, azure_policy_name: azure_policy_name, azure_hub_name: azure_hub_name, azure_primary_key: azure_primary_key)
        let endpoint = ConsoleRoutes.createACustomAzureIoTHubIntegration.consoleEndpoint(with: acmEndpoint, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: CreateACustomAzureIoTHubIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func createACustomAWSIoTCoreIntegration(name: String, type: String, topic: String, aws_access_key: String, aws_secret_key: String, aws_region: String, onSuccess: ConsoleCallbacks.CreateACustomAWSIoTCoreIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomAWSIoTCoreIntegrationRequest(name: name, type: type, topic: topic, aws_access_key: aws_access_key, aws_secret_key: aws_secret_key, aws_region: aws_region)
        let endpoint = ConsoleRoutes.createACustomAzureIoTHubIntegration.consoleEndpoint(with: acmEndpoint, params: request.dictionary)

        network.request(to: endpoint.build()) { (r: CreateACustomAWSIoTCoreIntegrationResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func deleteAnIntegration(integration_id: String, onSuccess: ConsoleCallbacks.DeleteAnIntegration, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteAnIntegration.consoleEndpoint(with: acmEndpoint, value: integration_id)

        network.request(to: endpoint.build()) { (r: Bool) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func listIntegrations(id _: String, onSuccess: ConsoleCallbacks.ListIntegrations, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.listIntegrations.consoleEndpoint(with: acmEndpoint)

        network.request(to: endpoint.build()) { (r: ListIntegrationsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func searchForAnIntegrationByUUID(integration_id: String, onSuccess: ConsoleCallbacks.SearchForAnIntegrationByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.searchForAnIntegrationByUUID.consoleEndpoint(with: acmEndpoint, value: integration_id)

        network.request(to: endpoint.build()) { (r: SearchForAnIntegrationByUUIDResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    func searchForAnIntegrationByName(name: String, onSuccess: ConsoleCallbacks.SearchForAnIntegrationByName, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.searchForAnIntegrationByName.consoleEndpoint(with: acmEndpoint)
            .add(queryItem: ACMQueryModel(name: "name", value: name))

        network.request(to: endpoint.build()) { (r: SearchForAnIntegrationByNameResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
