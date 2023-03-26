//
//  PendingTransactionsManager.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

class HeliumPendingTransactionsManager: BaseManager {
    public func pendingTransactionStatus(hash _: String, cursor _: String? = nil, onSuccess: BlockchainCallbacks.PendingTransactionStatus, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = PendingTransactionsRoutes.pendingTransactionStatus.endpoint()

        request(to: endpoint) { (r: BaseResult<PendingTransactionStatusResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }

    public func submitANewTransaction(hash: String, onSuccess: BlockchainCallbacks.SubmitANewTransaction, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = PendingTransactionsRoutes.submitANewTransaction.endpoint(hash)

        request(to: endpoint) { (r: BaseResult<SubmitANewTransactionResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
