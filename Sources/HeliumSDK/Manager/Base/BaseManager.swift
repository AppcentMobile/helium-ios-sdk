//
//  BaseManager.swift
//
//
//  Created by Burak Colak on 15.10.2022.
//

import Foundation
import ACMNetworking

public class BaseManager {
    var network: ACMNetworking!

    public required init() {
        network = ACMNetworking()
    }
}
