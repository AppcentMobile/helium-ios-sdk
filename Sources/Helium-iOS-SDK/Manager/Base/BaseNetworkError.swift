//
//  BaseNetworkError.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

struct BaseNetworkError: Error {

    var message: String?
    var log: String?
    var endpoint: BaseEndpoint?
    
}
