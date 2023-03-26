//
//  PendingTransactionsManager.swift
//

import ACMNetworking

class HeliumPendingTransactionsManager: BaseBlockChainManager {
    public func pendingTransactionStatus(hash _: String, cursor _: String? = nil, onSuccess: BlockchainCallbacks.PendingTransactionStatus, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = PendingTransactionsRoutes.pendingTransactionStatus.endpoint()

        network.request(to: endpoint.build()) { (r: PendingTransactionStatusResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }

    public func submitANewTransaction(hash: String, onSuccess: BlockchainCallbacks.SubmitANewTransaction, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = PendingTransactionsRoutes.submitANewTransaction.endpoint(hash)

        network.request(to: endpoint.build()) { (r: SubmitANewTransactionResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
