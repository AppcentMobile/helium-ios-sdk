//
//  TransactionsManager.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

class HeliumTransactionsManager: BaseManager {
    public func transactionForHash(hash: String, onSuccess: BlockchainCallbacks.TransactionForHash, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = TransactionsRoutes.transactionForHash.endpoint(hash)

        request(to: endpoint) { (r: BaseResult<TransactionForHashResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
