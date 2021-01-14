//
//  DiscoverAPI.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 23/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Moya

public enum DiscoverAPI {
    case getBaseShelf
    case getBaseShelfAB
    case getExclusiveBanner
    case getShelfContent(slug: String)
    case getSpecialCampaign(path: String)
}
// MARK: - TargetType
extension DiscoverAPI: TargetType {
    public var baseURL: URL {
        return URL(string: "https://discover.dmpcdn.com/discover/")!
    }
    
    public var path: String {
        var node = "tid_discover_page/"
        switch self {
        case .getBaseShelf:
            node.append("base_shelf")
        case .getBaseShelfAB:
            node.append("base_shelf_ab")
        case .getExclusiveBanner:
            node.append("exclusive_banner")
        case .getShelfContent(let slug):
            node.append("content_list/\(slug)")
        case .getSpecialCampaign(let path):
            node.append("\(path)")
        }
        return "\(node).json"
    }
    
    public var method: Moya.Method { return .get }
    
    public var sampleData: Data { return Data() }
    
    public var task: Task { return .requestPlain }
    
    public var headers: [String : String]? {
        return nil
    }
}
