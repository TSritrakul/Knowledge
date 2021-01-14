//
//  MoyaProvider+Combine.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Combine
import Moya

extension MoyaProvider: CombineCompatible { }

public extension Combine where Base: MoyaProviderType {
    func request(_ token: Base.Target, callbackQueue: DispatchQueue? = nil) -> Future<Response, Error> {
        return Future { [weak base] (promise) in
            _ = base?.request(token, callbackQueue: callbackQueue, progress: nil, completion: { (result) in
                switch result {
                case let .success(response):
                    promise(.success(response))
                case .failure(let error):
                    promise(.failure(error))
                }
            })
        }
    }
}

public extension Publisher where Output == Response, Failure == Error {
    func map<D: Decodable>(_ type: D.Type, atKeyPath keyPath: String? = nil, using decoder: JSONDecoder = JSONDecoder(), failsOnEmptyData: Bool = true) -> AnyPublisher<D, Self.Failure> {
        return flatMap { (output) -> Future<D, Self.Failure> in
            return Future { (promise) in
                do {
                    promise(.success(try output.map(type, atKeyPath: keyPath, using: decoder, failsOnEmptyData: failsOnEmptyData)))
                } catch {
                    promise(.failure(MoyaError.jsonMapping(output)))
                }
            }
        }.eraseToAnyPublisher()
    }
}
