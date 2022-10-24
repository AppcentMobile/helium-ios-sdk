//
//  PendingTransactionsRoutes.swift
//  
//
//  Created by Burak Colak on 14.10.2022.
//

struct PendingTransactionsRoutes {
    static let pendingTransactionStatus = BaseRoute(method: .get, path: "v1/pending_transactions/%@")
    static let submitANewTransaction = BaseRoute(method: .post, path: "v1/pending_transactions/%@")
}
