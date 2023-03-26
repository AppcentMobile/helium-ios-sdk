//
//  BaseNetworkError.swift
//


struct BaseNetworkError: Error {
    var message: String?
    var log: String?
    var endpoint: BaseEndpoint?
}
