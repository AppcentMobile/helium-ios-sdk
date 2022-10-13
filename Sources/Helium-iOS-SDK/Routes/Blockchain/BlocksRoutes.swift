//
//  BlocksRoutes.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

//MARK: https://docs.helium.com/api/blockchain/blocks

struct BlocksRoutes {

    static let blocksHeight = "v1/blocks/height"
    static let blocksStats = "v1/blocks/stats"
    static let blocksDescription = "v1/blocks"
    static let blockAtHeight = "v1/blocks/%d"
    static let blockAtHeightTransactions = "v1/blocks/%d/transactions"
    static let blockAtHash = "v1/blocks/hash/%@"
    static let blockAtHashTransactions = "v1/blocks/hash/:hash/transactions"

}
