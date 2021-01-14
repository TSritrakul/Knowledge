//
//  DSCShelfModel.swift
//  Data
//
//  Created by Thatchaphon Sritrakul on 15/6/2563 BE.
//  Copyright © 2563 True Corporation. All rights reserved.
//

import Foundation

// MARK: - DSCShelfModelElement
public struct DSCShelfModelElement: Codable {
    public let appURL: String?
    public let enableAPI: String?
    public let hamburgerMenu: String?
    public let icon: String?
    public let iconActive, iconTopNav: String?
    public let seemoreDeeplink: String?
    public let shelfCode: String?
    public let shelfSlug: String?
    public let shelfTheme: String?
    public let titleEn, titleTh: String?
    public let topNavOrder, topNavOrderAb: String?
    
    public init() {
        self.appURL = ""
        self.enableAPI = ""
        self.hamburgerMenu = ""
        self.icon = ""
        self.iconActive = ""
        self.iconTopNav = ""
        self.seemoreDeeplink = ""
        self.shelfCode = ""
        self.shelfSlug = ""
        self.shelfTheme = ""
        self.titleEn = ""
        self.titleTh = ""
        self.topNavOrder = ""
        self.topNavOrderAb = ""
    }

    enum CodingKeys: String, CodingKey {
        case appURL = "app_url"
        case enableAPI = "enable_api"
        case hamburgerMenu = "hamburger_menu"
        case icon
        case iconActive = "icon_active"
        case iconTopNav = "icon_top_nav"
        case seemoreDeeplink = "seemore_deeplink"
        case shelfCode = "shelf_code"
        case shelfSlug = "shelf_slug"
        case shelfTheme = "shelf_theme"
        case titleEn = "title_en"
        case titleTh = "title_th"
        case topNavOrder = "top_nav_order"
        case topNavOrderAb = "top_nav_order_ab"
    }
}

public typealias DSCShelfModel = [DSCShelfModelElement]
