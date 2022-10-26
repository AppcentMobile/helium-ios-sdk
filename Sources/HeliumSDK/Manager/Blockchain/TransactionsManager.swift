//
//  TransactionsManager.swift
//  
//
//  Created by Burak Colak on 20.10.2022.
//

class HeliumTransactionsManager: BaseManager {
    public func transactionForHash(hash: String, onSuccess: BlockchainCallbacks.TransactionForHash, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = TransactionsRoutes.transactionForHash.endpoint(hash)

        self.request(to: endpoint) { (r: BaseResult<TransactionForHashResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
