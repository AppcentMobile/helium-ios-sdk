//
//  AccountsManager.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

class AccountsManager {

    func listAccounts(onSuccess: HeliumListBlockChainAccountsCallback, onError: HeliumErrorCallback) {
        let route = AccountsRoutes.listAccounts
        let endpoint = BaseEndpoint(
            path: route.path,
            method: route.method
        )

        BaseManager.shared.request(to: endpoint) { (r: BaseResult<HeliumBlockChainListAccountsResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }

}
