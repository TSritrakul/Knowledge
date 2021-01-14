//
//  DSCContentListModel.swift
//  Data
//
//  Created by Thatchaphon Sritrakul on 15/6/2563 BE.
//  Copyright © 2563 True Corporation. All rights reserved.
//

import Foundation

// MARK: - DSCContentListModelElement
public struct DSCContentListModelElement: Codable {
    public let primary: DSCContentListPrimary?
}

// MARK: - Primary
public struct DSCContentListPrimary: Codable {
    public let access, detailEn, detailTh, icon: String?
    public let info: Info?
    public let tagEn, tagTh: String?
    public let thumbnail: String?
    public let titleEn, titleTh: String?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case access
        case detailEn = "detail_en"
        case detailTh = "detail_th"
        case icon, info
        case tagEn = "tag_en"
        case tagTh = "tag_th"
        case thumbnail
        case titleEn = "title_en"
        case titleTh = "title_th"
        case type
    }
}

// MARK: - Info
public struct Info: Codable {
    public let apiURL, contentID, channelNameEn, channelNameTh: String?
    public let cmsID: String?
    public let epgFlag: Int?
    public let expiredDate: String?
    public let streamInfo: StreamInfo?
    public let subscriptionTiers: [String]?
    public let thumbnail: String?
    public let thumbnailList: ThumbnailList?
    public let recommend: String?

    enum CodingKeys: String, CodingKey {
        case apiURL = "api_url"
        case contentID = "content_id"
        case channelNameEn = "channel_name_en"
        case channelNameTh = "channel_name_th"
        case cmsID = "cms_id"
        case epgFlag = "epg_flag"
        case expiredDate = "expired_date"
        case streamInfo = "stream_info"
        case subscriptionTiers = "subscription_tiers"
        case thumbnail
        case thumbnailList = "thumbnail_list"
        case recommend
    }
}

// MARK: - StreamInfo
public struct StreamInfo: Codable {
    let allowChromeCast: String?
    let backOut, backoutMessage: String?
    let drm: String?
    let geoBlock: String?
    let isPremium, subscriptionoffRequirelogin, trueVision: String?
    let backoutEndDate, backoutStartDate: String?

    enum CodingKeys: String, CodingKey {
        case allowChromeCast = "allow_chrome_cast"
        case backOut = "back_out"
        case backoutMessage = "backout_message"
        case drm
        case geoBlock = "geo_block"
        case isPremium = "is_premium"
        case subscriptionoffRequirelogin = "subscriptionoff_requirelogin"
        case trueVision = "true_vision"
        case backoutEndDate = "backout_end_date"
        case backoutStartDate = "backout_start_date"
    }
}

public struct ThumbnailList: Codable {
    public let thumb, thumbLarge: String?

    enum CodingKeys: String, CodingKey {
        case thumb
        case thumbLarge = "thumb_large"
    }
}

public typealias DSCContentListModel = [DSCContentListModelElement]
