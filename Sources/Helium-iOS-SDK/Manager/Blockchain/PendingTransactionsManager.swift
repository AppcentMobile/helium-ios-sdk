//
//  PendingTransactionsManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

import UIKit

class PendingTransactionsManager: BaseManager {
    public func pendingTransactionStatus(hash: String, cursor: String? = nil, onSuccess: BlockchainCallbacks.PendingTransactionStatus, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = PendingTransactionsRoutes.pendingTransactionStatus.endpoint()

        self.request(to: endpoint) { (r: BaseResult<PendingTransactionStatusResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

    public func submitANewTransaction(hash: String, onSuccess: BlockchainCallbacks.SubmitANewTransaction, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = PendingTransactionsRoutes.submitANewTransaction.endpoint(hash)

        self.request(to: endpoint) { (r: BaseResult<SubmitANewTransactionResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
