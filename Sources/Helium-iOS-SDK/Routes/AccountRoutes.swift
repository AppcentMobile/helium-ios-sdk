//
//  AccountRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

//MARK: https://docs.helium.com/api/blockchain/blocks

struct AccountRoutes {

    static let listAccounts = "v1/accounts"
    static let listRichestAccounts = "v1/accounts/rich"
    static let accountForAddress = "v1/accounts/%@"
    static let hotspotsForAccount = "v1/accounts/%@/hotspots"
    static let validatorsForAccount = "v1/accounts/%@/validators"
    static let ouisForAccount = "v1/accounts/%@/ouis"
    
}
