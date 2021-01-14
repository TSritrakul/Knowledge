//
//  DSCExclusiveBannerModel.swift
//  Data
//
//  Created by Thatchaphon Sritrakul on 15/6/2563 BE.
//  Copyright © 2563 True Corporation. All rights reserved.
//

import Foundation

// MARK: - DSCExclusiveBannerModelElement
public struct DSCExclusiveBannerModelElement: Codable {
    let access, bannerID: String?
    public let image: DSCExclusiveBannerImage?
    let imageList: DSCExclusiveBannerImageList?
    public let info: DSCExclusiveBannerInfo?
    public let isSubscribed, tagEn, tagTh, titleEn: String?
    public let titleTh: String?
    public let type: DSCExclusiveBannerModelType?

    enum CodingKeys: String, CodingKey {
        case access
        case bannerID = "banner_id"
        case image
        case imageList = "image_list"
        case info
        case isSubscribed = "is_subscribed"
        case tagEn = "tag_en"
        case tagTh = "tag_th"
        case titleEn = "title_en"
        case titleTh = "title_th"
        case type
    }
}

public enum DSCExclusiveBannerModelType: String, Codable {
    case tss = "subscription-tss"
    case articleNews = "article-news"
    case articleTrueLife = "article-truelife"
    case articleScriptToDay = "article-scripttoday"
    case articleNextcover = "article-nextcover"
    case privilege = "privilege"
    case merchant = "merchant"
    case video = "video"
    case seriesTvod = "series-tvod"
    case seriesSvod = "series-svod"
    case seriesMy = "series-my"
    case movieTrailer = "movie-trailer"
    case movieSvod = "movie-svod"
    case movieTvod = "movie-tvod"
    case musicMy = "music-my"
    case musicPlaylist = "music-playlist"
    case musicChart = "music-chart"
    case musicAlbum = "music-album"
    case musicArtist = "music-artist"
    case musicSong = "music-song"
    case tvMy = "tv-my"
    case tvReminder = "tv-reminder"
    case tvLive = "tv-live"
    case soccerMatch = "soccer-match"
    case soccerPreview = "soccer-preview"
    case soccerHighlight = "soccer-highlight"
    case soccerDailyHighlight = "soccer-dailyhighlight"
    case soccerCatchup = "soccer-catchup"
    case webView = "webview"
    case tvDramaScript = "tv-dramascript"
    case tvCatchup = "tv-catchup"
    case tvProgram = "tv-program"
    case inappBrowser = "inapp-browser"
    case inappBrowserWithSSOID = "inapp-browser-with-ssoid"
    case externalBrowser = "external-browser"
    case sportClip = "sport-clip"
    case curateClip = "curate-clip"
    case webviewNoHeader = "webview-no-header"
    case campaign = "campaign"
    case truemoneyGame = "tmn-game"
//    // FIXME: remove 'playTownGame' case when don't used.
    case playTownGame = "playtown-game"
//    // Smtm
    case specialLive = "special-live"
    case clipMovie = "clip-movie"
    case clipSeries = "clip-series"
//    // Premium
    case sportClipPremium = "sportclip"
    case sportTeam = "sportteam"
//    // Seemore
    case seemore = "seemore"
//    // Campaign FriendGetFriend
    case campaignFriendGetFriend = "campaign-fgf"
    case privilegeDining = "privilege_dining"
    case privilegeDigitalOffer = "privilege_digitaloffer"
//    // Sport
    case sportArticle = "sportarticle"

    case dealOfTheDay = "deal-of-the-day"
    case purchasePackage = "purchase_package"
    case mission = "mission"
    case sevenDays = "7days"
    case longDo = "longdo"
    case clip = "clip"
    case movie = "movie"
    case series = "series"
    case thematic = "thematic"
    case webViewDynamicToken = "webview-dynamic-token"
    case sevenElevenCoupon = "privilege_711coupon"
    case externalWebDialog = "external-web-dialog"
}

// MARK: - Image
public struct DSCExclusiveBannerImage: Codable {
    public let imgSubscribed, imgSubscribedTh, imgUnsubscribed, imgUnsubscribedTh: String?

    enum CodingKeys: String, CodingKey {
        case imgSubscribed = "img_subscribed"
        case imgSubscribedTh = "img_subscribed_th"
        case imgUnsubscribed = "img_unsubscribed"
        case imgUnsubscribedTh = "img_unsubscribed_th"
    }
}

// MARK: - ImageList
struct DSCExclusiveBannerImageList: Codable {
    let imgSubscribed, imgSubscribedTh, imgUnsubscribed, imgUnsubscribedTh: String?
    let landscapeImage, ottLandscape, ottPortrait, portraitImage: String?
    let squareImage: String?
    let trueidLandscape: String?
    let trueidLandscapeA, trueidLandscapeB: String?
    let trueidPortrait, trueidwebLandscape, trueidwebPortrait: String?

    enum CodingKeys: String, CodingKey {
        case imgSubscribed = "img_subscribed"
        case imgSubscribedTh = "img_subscribed_th"
        case imgUnsubscribed = "img_unsubscribed"
        case imgUnsubscribedTh = "img_unsubscribed_th"
        case landscapeImage = "landscape_image"
        case ottLandscape = "ott_landscape"
        case ottPortrait = "ott_portrait"
        case portraitImage = "portrait_image"
        case squareImage = "square_image"
        case trueidLandscape = "trueid_landscape"
        case trueidLandscapeA = "trueid_landscape_A"
        case trueidLandscapeB = "trueid_landscape_B"
        case trueidPortrait = "trueid_portrait"
        case trueidwebLandscape = "trueidweb_landscape"
        case trueidwebPortrait = "trueidweb_portrait"
    }
}

// MARK: - Info
public struct DSCExclusiveBannerInfo: Codable {
    let apiURL: String?
    public let cmsID: String?
    public let contentID: String?
    let deeplink: String?
    let expiredDate, masterID, minimumVersion, saleForMember: String?
    let saleForRegular: String?
    let imageLandscape, imagePortrait: String?
    let packageCode, programID: String?
    let subscriptionTiers: [String]?
    let tvShowCode, type, channelNameEn, channelNameTh: String?
    let setting: DSCExclusiveBannerSetting?
    let streamInfo: DSCExclusiveBannerStreamInfo?
    let thumbnail: String?

    enum CodingKeys: String, CodingKey {
        case apiURL = "api_url"
        case cmsID = "cms_id"
        case contentID = "content_id"
        case deeplink
        case expiredDate = "expired_date"
        case masterID = "master_id"
        case minimumVersion = "minimum_version"
        case saleForMember = "sale_for_member"
        case saleForRegular = "sale_for_regular"
        case imageLandscape = "image_landscape"
        case imagePortrait = "image_portrait"
        case packageCode = "package_code"
        case programID = "program_id"
        case subscriptionTiers = "subscription_tiers"
        case tvShowCode = "tv_show_code"
        case type
        case channelNameEn = "channel_name_en"
        case channelNameTh = "channel_name_th"
        case setting
        case streamInfo = "stream_info"
        case thumbnail
    }
}

// MARK: - Setting
struct DSCExclusiveBannerSetting: Codable {
    let fneventWatch, h1, h1En, h1Th: String?
    let metaDescription, metaTitle, watchDuration: String?

    enum CodingKeys: String, CodingKey {
        case fneventWatch = "fnevent_watch"
        case h1
        case h1En = "h1_en"
        case h1Th = "h1_th"
        case metaDescription = "meta_description"
        case metaTitle = "meta_title"
        case watchDuration = "watch_duration"
    }
}

// MARK: - StreamInfo
struct DSCExclusiveBannerStreamInfo: Codable {
    let allowChromeCast, backOut, backoutEndDate, backoutMessage: String?
    let backoutStartDate, drm, geoBlock, isPremium: String?
    let subscriptionoffRequirelogin, trueVision: String?

    enum CodingKeys: String, CodingKey {
        case allowChromeCast = "allow_chrome_cast"
        case backOut = "back_out"
        case backoutEndDate = "backout_end_date"
        case backoutMessage = "backout_message"
        case backoutStartDate = "backout_start_date"
        case drm
        case geoBlock = "geo_block"
        case isPremium = "is_premium"
        case subscriptionoffRequirelogin = "subscriptionoff_requirelogin"
        case trueVision = "true_vision"
    }
}

public typealias DSCExclusiveBannerModel = [DSCExclusiveBannerModelElement]
