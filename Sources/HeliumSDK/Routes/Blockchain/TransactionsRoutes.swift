//
//  TransactionRoutes.swift
//  
//
//  Created by Burak Colak on 14.10.2022.
//

struct TransactionsRoutes {
    static let transactionForHash = BaseRoute(method: .get, path: "v1/transactions/%@")
}
