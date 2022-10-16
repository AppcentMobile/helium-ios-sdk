//
//  AccountsManager.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public class HeliumBlockChainAccountsManager: BaseManager {

    private override init() {}

    public static let shared = HeliumBlockChainAccountsManager()

    public func listAccounts(onSuccess: HeliumBlockChainListAccountsCallback, onError: HeliumErrorCallback) {
        let route = AccountsRoutes.listAccounts
        let endpoint = BaseEndpoint(
            path: route.path,
            method: route.method
        )

        self.request(to: endpoint) { (r: BaseResult<HeliumBlockChainListAccountsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

}
