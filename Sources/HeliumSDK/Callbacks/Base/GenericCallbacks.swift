//
//  GenericCallbacks.swift
//

public enum GenericCallbacks {
    public typealias VoidCallback = (() -> Void)?
    public typealias ErrorCallback = ((Error?) -> Void)?
    public typealias InfoCallback = ((Bool?, Error?) -> Void)?
}
