//
//  SigletonModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 27/4/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation

struct SingletonModel {
    var number: Int
    var firstName: String
    var surName: String
    
    init(firstName: String = "", surName: String = "", number: Int = 0) {
        self.firstName = firstName
        self.surName = surName
        self.number = number
    }
}
