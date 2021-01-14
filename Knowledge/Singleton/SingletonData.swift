//
//  SingletonData.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 26/4/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation

final class SingletonData {
    public static let shared = SingletonData()
    private var message: [SingletonModel] = [SingletonModel()]
    
    private init() {}
    
    public func setString(firstName: String, surName: String) {
        var singletonModel = SingletonModel()
        singletonModel.firstName = firstName
        singletonModel.surName = surName
        singletonModel.number = (message.last?.number ?? 0) + 1
        message.append(singletonModel)
    }
    
    public func getString() -> [SingletonModel] {
        return message
    }
}
