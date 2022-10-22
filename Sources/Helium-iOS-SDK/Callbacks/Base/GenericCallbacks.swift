//
//  GenericCallbacks.swift
//  
//
//  Created by Burak Colak on 21.10.2022.
//

public struct GenericCallbacks {
    public typealias VoidCallback = (() -> ())?
    public typealias ErrorCallback = ((Error?) -> ())?
}
