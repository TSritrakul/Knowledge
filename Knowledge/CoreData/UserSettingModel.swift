//
//  UserSettingModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 25/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation

public struct UserSettingModel: Codable {
    let name: String
    let age: String
    
    public init() {
        self.name = ""
        self.age = ""
    }
    
    public init(name: String = "", age: String = "") {
        self.name = name
        self.age = age
    }

    enum CodingKeys: String, CodingKey {
        case name
        case age
    }
}
