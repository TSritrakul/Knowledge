//
//  CdnDiscoverRepository.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Moya
import Combine

protocol CdnDiscoverRepository {
    func getBaseShelf() -> AnyPublisher<BaseShelfModel, Error>
}

class CdnDiscoverRepositoryImpl: CdnDiscoverRepository {
    private let providerCdnDiscover = MoyaProvider<CdnDiscoverAPI>()
    
    init() {}
    
    func getBaseShelf() -> AnyPublisher<BaseShelfModel, Error> {
        return providerCdnDiscover
            .cb
            .request(.getBaseShelf)
            .map(BaseShelfModel.self)
    }
}
