//
//  HeliumManagerGenerator.swift
//  
//
//  Created by Burak Colak on 26.10.2022.
//

import UIKit

class HeliumManagerGenerator {
    func generate<T: BaseManager>(_ item: T.Type) -> T {
        return item.init()
    }
}
