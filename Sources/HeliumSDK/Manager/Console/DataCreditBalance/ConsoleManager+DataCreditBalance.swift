//
//  ConsoleManager+DataCreditBalance.swift
//
//
//  Created by Burak Colak on 23.10.2022.
//

public extension HeliumConsoleManager {
    func dataCreditBalance(cursor _: String? = nil, onSuccess: ConsoleCallbacks.DataCreditBalance, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.dataCreditBalance.consoleEndpoint()

        request(to: endpoint) { (r: BaseResult<DataCreditBalanceResponse?, Error>) in
            switch r {
            case let .success(r):
                onSuccess?(r)
            case let .failure(e):
                onError?(e)
            }
        }
    }
}
