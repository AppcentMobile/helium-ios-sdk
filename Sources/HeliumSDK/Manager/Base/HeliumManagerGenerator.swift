//
//  HeliumManagerGenerator.swift
//  
//
//  Created by Burak Colak on 26.10.2022.
//

import Foundation

public class HeliumManagerGenerator {
    public init() {}

    public func generate<T: BaseManager>(_ item: T.Type) -> T {
        return item.init()
    }
}
