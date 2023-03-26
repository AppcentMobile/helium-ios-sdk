//
//  HeliumManagerGenerator.swift
//

import Foundation

public class HeliumManagerGenerator {
    public init() {}

    public func generate<T: BaseManager>(_ item: T.Type) -> T {
        return item.init()
    }
}
