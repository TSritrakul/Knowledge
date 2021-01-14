//
//  UserSetting+CoreDataClass.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 25/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//
//

import Foundation
import CoreData

@objc(UserSetting)
public class UserSetting: NSManagedObject {
    
    class func save(userSetting: UserSettingModel, context: NSManagedObjectContext) throws {
        let request: NSFetchRequest<UserSetting> = UserSetting.fetchRequest()

        do {
            let matches = try context.fetch(request)
            for data in matches {
                context.delete(data)
            }
        } catch {
            throw error
        }

        let data = UserSetting(context: context)
        data.name = userSetting.name
        data.age = userSetting.age
        do {
            try context.save()
            print("✅ Person saved succesfuly")
            
        } catch let error {
            print("❌ Failed to create Person: \(error.localizedDescription)")
        }
    }
    
    class func fetch(context: NSManagedObjectContext) throws -> UserSettingModel {
        let request: NSFetchRequest<UserSetting> = UserSetting.fetchRequest()

        do {
            let matches = try context.fetch(request)
            if matches.count > 0 {
                let userSetting = UserSettingModel(name: matches.last?.name ?? "", age: matches.last?.age ?? "")
                return userSetting
            }
        } catch {
            throw error
        }
        
        return UserSettingModel()
    }
}
