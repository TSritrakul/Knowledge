//
//  DiscoverRepository.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 23/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import RxSwift
import Moya

protocol DSCRepository {
    func getBaseShelf() -> Observable<DSCShelfModel>
    func getBaseShelfAB() -> Observable<DSCShelfModel>
    func getExclusiveBanner() -> Observable<DSCExclusiveBannerModel>
    func getContentList(slug: String) -> Observable<DSCContentListModel>
    func getSpecialCampaign(path: String) -> Observable<DSCSpecialCampaignModel>
}

final class DSCRepositoryImpl: DSCRepository {
    private let provider = MoyaProvider<DiscoverAPI>()
    // MARK: - Protocol Methods
    func getBaseShelf() -> Observable<DSCShelfModel> {
        return provider
            .rx.request(.getBaseShelf)
            .map(DSCShelfModel.self)
            .asObservable()
    }
    
    func getBaseShelfAB() -> Observable<DSCShelfModel> {
        return provider.rx
            .request(.getBaseShelfAB)
            .map(DSCShelfModel.self)
            .asObservable()
    }
    
    func getExclusiveBanner() -> Observable<DSCExclusiveBannerModel> {
        return provider
            .rx
            .request(.getExclusiveBanner)
            .map(DSCExclusiveBannerModel.self)
            .asObservable()
    }

    func getContentList(slug: String) -> Observable<DSCContentListModel> {
        return provider
            .rx
            .request(.getShelfContent(slug: slug))
            .map(DSCContentListModel.self)
            .asObservable()
    }
    
    func getSpecialCampaign(path: String) -> Observable<DSCSpecialCampaignModel> {
        return provider
            .rx
            .request(.getSpecialCampaign(path: path))
            .map(DSCSpecialCampaignModel.self)
            .asObservable()
    }
}

