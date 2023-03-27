//
//  ConsoleManager+DataCreditBalance.swift
//

public extension HeliumConsoleManager {
    func dataCreditBalance(cursor _: String? = nil, onSuccess: ConsoleCallbacks.DataCreditBalance, onError: GenericCallbacks.ErrorCallback) {
        let endpoint = ConsoleRoutes.dataCreditBalance.consoleEndpoint(with: acmEndpoint)

        network.request(to: endpoint.build()) { (r: DataCreditBalanceResponse) in
            onSuccess?(r)
        } onError: { e in
            onError?(e)
        }
    }
}
