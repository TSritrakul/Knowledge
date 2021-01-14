//
//  BaseShelfModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation

// MARK: - BaseShelfModelElement
public struct BaseShelfModelElement: Codable, Hashable {
    public let appURL: String?
    public let modelBaseShelfID: String?
    public let contentListID: String?
    public let enableAPI: String?
    public let hamburgerMenu: String?
    public let icon: String?
    public let iconActive: String?
    public let iconTopNav: String?
    public let seemoreDeeplink: String?
    public let shelfCode: String?
    public let shelfSlug: String?
    public let shelfTheme: String?
    public let titleEn: String?
    public let titleMm: String?
    public let titleTh: String?
    public let topNavOrder: String?
    public let topNavOrderAb: String?
    public let searchMenuOrder: String?
    public let searchMenuTitleEn: String?
    public let searchMenuTitleTh: String?
    public let topNavTitleEn: String?
    public let topNavTitleMm: String?
    public let topNavTitleTh: String?
    public let baseShelfID: String?

    enum CodingKeys: String, CodingKey {
        case appURL = "app_url"
        case modelBaseShelfID = "base_shelf_id"
        case contentListID = "content_list_id"
        case enableAPI = "enable_api"
        case hamburgerMenu = "hamburger_menu"
        case icon = "icon"
        case iconActive = "icon_active"
        case iconTopNav = "icon_top_nav"
        case seemoreDeeplink = "seemore_deeplink"
        case shelfCode = "shelf_code"
        case shelfSlug = "shelf_slug"
        case shelfTheme = "shelf_theme"
        case titleEn = "title_en"
        case titleMm = "title_mm"
        case titleTh = "title_th"
        case topNavOrder = "top_nav_order"
        case topNavOrderAb = "top_nav_order_ab"
        case searchMenuOrder = "search_menu_order"
        case searchMenuTitleEn = "search_menu_title_en"
        case searchMenuTitleTh = "search_menu_title_th"
        case topNavTitleEn = "top_nav_title_en"
        case topNavTitleMm = "top_nav_title_mm"
        case topNavTitleTh = "top_nav_title_th"
        case baseShelfID = "_base_shelf_id"
    }

    public init(appURL: String?, modelBaseShelfID: String?, contentListID: String?, enableAPI: String?, hamburgerMenu: String?, icon: String?, iconActive: String?, iconTopNav: String?, seemoreDeeplink: String?, shelfCode: String?, shelfSlug: String?, shelfTheme: String?, titleEn: String?, titleMm: String?, titleTh: String?, topNavOrder: String?, topNavOrderAb: String?, searchMenuOrder: String?, searchMenuTitleEn: String?, searchMenuTitleTh: String?, topNavTitleEn: String?, topNavTitleMm: String?, topNavTitleTh: String?, baseShelfID: String?) {
        self.appURL = appURL
        self.modelBaseShelfID = modelBaseShelfID
        self.contentListID = contentListID
        self.enableAPI = enableAPI
        self.hamburgerMenu = hamburgerMenu
        self.icon = icon
        self.iconActive = iconActive
        self.iconTopNav = iconTopNav
        self.seemoreDeeplink = seemoreDeeplink
        self.shelfCode = shelfCode
        self.shelfSlug = shelfSlug
        self.shelfTheme = shelfTheme
        self.titleEn = titleEn
        self.titleMm = titleMm
        self.titleTh = titleTh
        self.topNavOrder = topNavOrder
        self.topNavOrderAb = topNavOrderAb
        self.searchMenuOrder = searchMenuOrder
        self.searchMenuTitleEn = searchMenuTitleEn
        self.searchMenuTitleTh = searchMenuTitleTh
        self.topNavTitleEn = topNavTitleEn
        self.topNavTitleMm = topNavTitleMm
        self.topNavTitleTh = topNavTitleTh
        self.baseShelfID = baseShelfID
    }
}

public typealias BaseShelfModel = [BaseShelfModelElement]

