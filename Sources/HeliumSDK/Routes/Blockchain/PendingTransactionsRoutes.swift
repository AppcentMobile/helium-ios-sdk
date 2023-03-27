//
//  PendingTransactionsRoutes.swift
//

enum PendingTransactionsRoutes {
    static let pendingTransactionStatus = BaseRoute(method: .get, path: "v1/pending_transactions/%@")
    static let submitANewTransaction = BaseRoute(method: .post, path: "v1/pending_transactions/%@")
}
