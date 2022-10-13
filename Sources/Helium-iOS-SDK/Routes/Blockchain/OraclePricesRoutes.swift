//
//  OraclePricesRoutes.swift
//  
//
//  Created by Burak Colak on 14.10.2022.
//

import UIKit

struct OraclePricesRoutes {

    static let currentOraclePrice = "v1/oracle/prices/current"
    static let currentAndHistoricalOraclePrices = "v1/oracle/prices"
    static let oraclePriceStats = "v1/oracle/prices/stats"
    static let oraclePriceAtASpecificBlock = "v1/oracle/prices/%@"
    static let listOracleActivity = "v1/oracle/activity"
    static let listActivityForASpecificOracle = "v1/oracle/%@/activity"
    static let getPredictedHNTOraclePrices = "v1/oracle/predictions"

}
