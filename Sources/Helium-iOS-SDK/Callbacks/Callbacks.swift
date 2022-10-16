//
//  Callbacks.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public typealias HeliumVoidCallback = (() -> ())?
public typealias HeliumErrorCallback = ((Error?) -> ())?

//MARK: Accounts
public typealias HeliumBlockChainListAccountsCallback = ((HeliumBlockChainListAccountsResponse?) -> ())?
