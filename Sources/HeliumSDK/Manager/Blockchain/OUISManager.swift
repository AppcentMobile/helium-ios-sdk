//
//  OUISManager.swift
//

import ACMNetworking
import Foundation

class HeliumOUISManager: BaseBlockChainManager {
    public func listOUIs(cursor: String? = nil, onSuccess: BlockchainCallbacks.ListOUIs, onError: GenericCallbacks.ErrorCallback) {
        var endpoint = OUISRoutes.listOUIs.endpoint(with: acmEndpoint)

        if let cursor = cursor {
            endpoint = endpoint.add(queryItem: ACMQueryModel(name: "cursor", value: cursor))
        }

        network.request(to: endpoint.build()) { (r: ListOUIsResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func getAnOUI(oui: String, onSuccess: BlockchainCallbacks.GetAnOUI, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OUISRoutes.getAnOUI.endpoint(with: acmEndpoint, value: oui)

        network.request(to: endpoint.build()) { (r: GetAnOUIResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func getLastAssignedOUI(min_time _: String, max_time _: String, onSuccess: BlockchainCallbacks.GetLastAssignedOUI, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OUISRoutes.getLastAssignedOUI.endpoint(with: acmEndpoint)

        network.request(to: endpoint.build()) { (r: GetLastAssignedOUIResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func getOUIStats(block: String, onSuccess: BlockchainCallbacks.OraclePriceAtASpecificBlock, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = OUISRoutes.getOUIStats.endpoint(with: acmEndpoint, value: block)

        network.request(to: endpoint.build()) { (r: OraclePriceAtASpecificBlockResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
