//
//  ConsoleManager+DataCreditBalance.swift
//  
//
//  Created by Burak Colak on 23.10.2022.
//



extension ConsoleManager {
    public func dataCreditBalance(cursor: String? = nil, onSuccess: ConsoleCallbacks.DataCreditBalance, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.dataCreditBalance.consoleEndpoint()

        self.request(to: endpoint) { (r: BaseResult<DataCreditBalanceResponse?, Error>) in
            switch r {
            case .success(let r):
                onSuccess?(r)
            case .failure(let e):
                onError?(e)
            }
        }
    }
}
