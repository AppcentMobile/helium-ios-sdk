//
//  GenericCallbacks.swift
//
//
//  Created by Burak Colak on 21.10.2022.
//

public enum GenericCallbacks {
    public typealias VoidCallback = (() -> Void)?
    public typealias ErrorCallback = ((Error?) -> Void)?
    public typealias InfoCallback = ((Bool?, Error?) -> Void)?
}
