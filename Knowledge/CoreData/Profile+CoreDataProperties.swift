//
//  Profile+CoreDataProperties.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 25/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//
//

import Foundation
import CoreData


extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var age: String?
    @NSManaged public var firstname: String?
    @NSManaged public var surname: String?

}
