//
//  ProfileModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 25/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation

public struct ProfileModel: Codable {
    let firstName: String
    let surName: String
    let age: String
    
    public init() {
        self.firstName = ""
        self.surName = ""
        self.age = ""
    }

    enum CodingKeys: String, CodingKey {
        case firstName
        case surName
        case age
    }
}
