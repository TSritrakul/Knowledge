//
//  UserSetting+CoreDataProperties.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 25/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//
//

import Foundation
import CoreData


extension UserSetting {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserSetting> {
        return NSFetchRequest<UserSetting>(entityName: "UserSetting")
    }

    @NSManaged public var age: String?
    @NSManaged public var name: String?
    @NSManaged public var profile: NSObject?

}
