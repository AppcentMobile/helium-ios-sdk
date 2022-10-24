//
//  BaseResult.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

enum BaseResult<T, E> where E: Error {
    case success(T)
    case failure(E)
}
