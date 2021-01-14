//
//  GetDSCExclusiveBannerUseCase.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 23/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import RxSwift

public protocol GetDSCExclusiveBannerUseCase {
    func execute() -> Observable<DSCExclusiveBannerModel>
}

public final class GetDSCExclusiveBannerUseCaseImpl: GetDSCExclusiveBannerUseCase {
    
    private var dscRepository: DSCRepository
    
    public init() {
        self.dscRepository = DSCRepositoryImpl()
    }
    
    public func execute() -> Observable<DSCExclusiveBannerModel> {
        return self.dscRepository
            .getExclusiveBanner()
    }
}
