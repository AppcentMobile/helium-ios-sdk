//
//  BaseNetworkError.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

struct BaseNetworkError: Error {

    var message: String?
    var log: String?
    var endpoint: BaseEndpoint?
    
}
