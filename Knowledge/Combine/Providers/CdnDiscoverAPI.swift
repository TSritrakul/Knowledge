//
//  CdnDiscoverAPI.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Moya

enum CdnDiscoverAPI {
    case getBaseShelf
}

extension CdnDiscoverAPI: TargetType {
    var baseURL: URL {
        switch self {
        case .getBaseShelf:
            return URL(string: "https://discover.dmpcdn.com/discover/")!
        }
    }
    
    var path: String {
        switch self {
        case .getBaseShelf:
            return "tid_discover_page/base_shelf.json"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getBaseShelf:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .getBaseShelf:
            return Data()
        }
    }
    
    var task: Task {
        switch self {
        case .getBaseShelf:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .getBaseShelf:
            return ["Content-Type": "application/json"]
        }
    }
}
