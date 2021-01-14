//
//  DSCSpecialCampaignModel.swift
//  Data
//
//  Created by Thatchaphon Sritrakul on 15/6/2563 BE.
//  Copyright © 2563 True Corporation. All rights reserved.
//

import Foundation

// MARK: - DSCSpecialCampaignModelElement
public struct DSCSpecialCampaignModelElement: Codable {
    public let campaignType: String?
    public let index: String?
    public let items: [DSCSpecialCampaignItem]?
    public let shelfSlug: String?
    
    public init() {
        self.campaignType = ""
        self.index = ""
        self.items = []
        self.shelfSlug = ""
    }

    enum CodingKeys: String, CodingKey {
        case campaignType = "campaign_type"
        case index, items
        case shelfSlug = "shelf_slug"
    }
}

// MARK: - Item
public struct DSCSpecialCampaignItem: Codable {
    let access: String?
    public let image: DSCSpecialCampaignImage?
    public let info: DSCSpecialCampaignInfo?
    public let isSubscribed, tagEn, tagTh, titleEn: String?
    public let titleTh, type: String?

    enum CodingKeys: String, CodingKey {
        case access, image, info
        case isSubscribed = "is_subscribed"
        case tagEn = "tag_en"
        case tagTh = "tag_th"
        case titleEn = "title_en"
        case titleTh = "title_th"
        case type
    }
}

// MARK: - Image
public struct DSCSpecialCampaignImage: Codable {
    public let imgSubscribed, imgSubscribedTh, imgUnsubscribed, imgUnsubscribedTh: String?

    enum CodingKeys: String, CodingKey {
        case imgSubscribed = "img_subscribed"
        case imgSubscribedTh = "img_subscribed_th"
        case imgUnsubscribed = "img_unsubscribed"
        case imgUnsubscribedTh = "img_unsubscribed_th"
    }
}

// MARK: - Info
public struct DSCSpecialCampaignInfo: Codable {
    public let apiURL: String?
    let campaignName, expiredDate: String?
    public let id: String?
    let imageEn, imageTh, termConditionEn, termConditionTh: String?
    public let cmsID, contentID, experiment, key: String?
    public let value, campaignNamw: String?

    enum CodingKeys: String, CodingKey {
        case apiURL = "api_url"
        case campaignName = "campaign_name"
        case expiredDate = "expired_date"
        case id
        case imageEn = "image_en"
        case imageTh = "image_th"
        case termConditionEn = "term_condition_en"
        case termConditionTh = "term_condition_th"
        case cmsID = "cms_id"
        case contentID = "content_id"
        case experiment, key, value
        case campaignNamw = "campaign_namw"
    }
}

public typealias DSCSpecialCampaignModel = [DSCSpecialCampaignModelElement]
