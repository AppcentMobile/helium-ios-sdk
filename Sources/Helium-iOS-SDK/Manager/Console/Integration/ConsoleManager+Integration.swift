//
//  ConsoleManager+Integration.swift
//  
//
//  Created by Burak Colak on 24.10.2022.
//

import UIKit

extension ConsoleManager {
    public func createAPrebuiltIntegration(token: String, name: String, type: String, onSuccess: ConsoleCallbacks.CreateAPrebuiltIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateAPrebuiltIntegrationRequest(token: token, name: name, type: type)
        let endpoint = ConsoleRoutes.createAPrebuiltIntegration.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { (r: BaseResult<CreateAPrebuiltIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func createACustomHTTPIntegration(name: String, type: String, endpoint: String, method: String, headers: String? = nil, url_params: String? = nil, onSuccess: ConsoleCallbacks.CreateACustomHTTPIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomHTTPIntegrationRequest(name: name, type: type, endpoint: endpoint, method: method, headers: headers, url_params: url_params)
        let endpoint = ConsoleRoutes.createACustomHTTPIntegration.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { (r: BaseResult<CreateACustomHTTPIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func createACustomMQTTIntegration(name: String, type: String, endpoint: String, uplink_topic: String, downlink_topic: String, onSuccess: ConsoleCallbacks.CreateACustomMQTTIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomMQTTIntegrationRequest(name: name, type: type, endpoint: endpoint, uplink_topic: uplink_topic, downlink_topic: downlink_topic)
        let endpoint = ConsoleRoutes.createACustomMQTTIntegration.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { (r: BaseResult<CreateACustomMQTTIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func createACustomAzureIoTHubIntegration(name: String, type: String, azure_policy_name: String, azure_hub_name: String, azure_primary_key: String, onSuccess: ConsoleCallbacks.CreateACustomAzureIoTHubIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomAzureIoTHubIntegrationRequest(name: name, type: type, azure_policy_name: azure_policy_name, azure_hub_name: azure_hub_name, azure_primary_key: azure_primary_key)
        let endpoint = ConsoleRoutes.createACustomAzureIoTHubIntegration.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { (r: BaseResult<CreateACustomAzureIoTHubIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func createACustomAWSIoTCoreIntegration(name: String, type: String, topic: String, aws_access_key: String, aws_secret_key: String, aws_region: String, onSuccess: ConsoleCallbacks.CreateACustomAWSIoTCoreIntegration, onError: GenericCallbacks.ErrorCallback) {
        let request = CreateACustomAWSIoTCoreIntegrationRequest(name: name, type: type, topic: topic, aws_access_key: aws_access_key, aws_secret_key: aws_secret_key, aws_region: aws_region)
        let endpoint = ConsoleRoutes.createACustomAzureIoTHubIntegration.consoleEndpoint(params: request.dictionary)

        self.request(to: endpoint) { (r: BaseResult<CreateACustomAWSIoTCoreIntegrationResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func deleteAnIntegration(integration_id: String, onSuccess: ConsoleCallbacks.DeleteAnIntegration, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.deleteAnIntegration.consoleEndpoint(integration_id)

        self.request(to: endpoint) { success, error in
            if let error = error {
                onError?(error)
            }else {
                onSuccess?(success)
            }
        }
    }

    public func listIntegrations(id: String, onSuccess: ConsoleCallbacks.ListIntegrations, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.listIntegrations.consoleEndpoint()

        self.request(to: endpoint) { (r: BaseResult<ListIntegrationsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func searchForAnIntegrationByUUID(integration_id: String, onSuccess: ConsoleCallbacks.SearchForAnIntegrationByUUID, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.searchForAnIntegrationByUUID.consoleEndpoint(integration_id)

        self.request(to: endpoint) { (r: BaseResult<SearchForAnIntegrationByUUIDResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func searchForAnIntegrationByName(name: String, onSuccess: ConsoleCallbacks.SearchForAnIntegrationByName, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = ConsoleRoutes.searchForAnIntegrationByName.consoleEndpoint()

        endpoint.queryItems = [
            URLQueryItem(name: "name", value: name)
        ]

        self.request(to: endpoint) { (r: BaseResult<SearchForAnIntegrationByNameResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
