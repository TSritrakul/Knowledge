//
//  GetBaseShelfUseCase.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Combine

protocol GetBaseShelfUseCase {
    func execute() -> AnyPublisher<BaseShelfModel, Error>
}

class GetBaseShelfUseCaseImpl: GetBaseShelfUseCase {
    private let cdnDiscoverRepository: CdnDiscoverRepository
    
    init(cdnDiscoverRepository: CdnDiscoverRepository = CdnDiscoverRepositoryImpl()) {
        self.cdnDiscoverRepository = cdnDiscoverRepository
    }
    
    func execute() -> AnyPublisher<BaseShelfModel, Error> {
        return self.cdnDiscoverRepository.getBaseShelf()
    }
}
