//
//  Callbacks.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

typealias HeliumVoidCallback = (() -> ())?
typealias HeliumErrorCallback = ((Error?) -> ())?

//MARK: Accounts
typealias HeliumListBlockChainAccountsCallback = ((HeliumBlockChainListAccountsResponse?) -> ())?
