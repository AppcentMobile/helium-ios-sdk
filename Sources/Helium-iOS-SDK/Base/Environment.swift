//
//  Environment.swift
//  
//
//  Created by Burak Colak on 13.10.2022.
//

import UIKit

public enum HeliumEnvironment {

    public enum BLOCKCHAIN: String {
        case BETA = "https://api.helium.wtf"
        case SCALABLE = "https://api.helium.io"
    }

    public enum CONSOLE: String {
        case BASE = "https://console.helium.com"
    }

}
