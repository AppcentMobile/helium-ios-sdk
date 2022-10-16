//
//  Callbacks.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public struct GenericCallbacks {
    public typealias VoidCallback = (() -> ())?
    public typealias ErrorCallback = ((Error?) -> ())?
}

public struct BlockchainCallbacks {
    //MARK: Accounts
    public typealias ListAccountsCallback = ((ListAccountsResponse?) -> ())?
}
