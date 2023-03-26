//
//  TransactionsManager.swift
//

import ACMNetworking

class HeliumTransactionsManager: BaseBlockChainManager {
    public func transactionForHash(hash: String, onSuccess: BlockchainCallbacks.TransactionForHash, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = TransactionsRoutes.transactionForHash.endpoint(hash)

        network.request(to: endpoint.build()) { (r: TransactionForHashResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
