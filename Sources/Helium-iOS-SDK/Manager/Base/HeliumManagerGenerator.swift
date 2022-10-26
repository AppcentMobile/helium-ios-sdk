//
//  HeliumManagerGenerator.swift
//  
//
//  Created by Burak Colak on 26.10.2022.
//

import UIKit

public class HeliumManagerGenerator {
    public func generate<T: BaseManager>(_ item: T.Type) -> T {
        return item.init()
    }
}
