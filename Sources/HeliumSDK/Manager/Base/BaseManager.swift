//
//  BaseManager.swift
//

import ACMNetworking
import Foundation

public class BaseManager {
    var network: ACMNetworking!

    public required init() {
        network = ACMNetworking()
    }
}
