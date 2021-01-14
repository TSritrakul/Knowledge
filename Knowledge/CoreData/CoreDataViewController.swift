//
//  CoreDataViewController.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 25/6/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import UIKit
import RxSwift
import CoreData

class CoreDataViewController: UIViewController {

    @IBOutlet weak var coreDataTextField: UITextField!
    
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(contextObjectsDidChange(_:)), name: Notification.Name.NSManagedObjectContextObjectsDidChange, object: nil)

        // Do any additional setup after loading the view.
    }
    
    @objc func contextObjectsDidChange(_ notification: Notification) {
        print(notification)
        let context = notification.object as? NSManagedObjectContext
        if let insertedObjects = notification.userInfo?[NSInsertedObjectsKey] as? Set<NSManagedObject>, !insertedObjects.isEmpty {
            print(insertedObjects.contains(UserSetting()))
            print(insertedObjects.first)
            }
        if let fieldEditor = notification.userInfo
        {
            print(fieldEditor)
//            switch fieldEditor["deleted"] {
//            case is UserSetting:
//                print("Suc")
//            default:
//                print("Fail")
//            }
            
        }
        print(context)
    }

    @IBAction func touchSaveButton(_ sender: UIButton) {
//        CoreDataManager.shared.create(entityName: .userSetting(name: self.coreDataTextField.text ?? ""))
        let data = UserSettingModel(name: self.coreDataTextField.text ?? "", age: "")
        let _ = try? UserSetting.save(userSetting: data, context: CoreDataManager.shared.context)
    }
    
    @IBAction func touchRemoveButton(_ sender: UIButton) {
//        CoreDataManager.shared.remove(entityName: .userSetting())
    }

    @IBAction func touchFetchButton(_ sender: UIButton) {
//        let userSetting = try? UserSetting.fetch(context: CoreDataManager.shared.context)
//        print(userSetting?.name)
//        CoreDataManager.shared.fetch(entityName: .userSetting()).subscribe(onSuccess: { (response) in
//            if let data = response as? [UserSetting] {
//                for (item) in data {
//                    print("\(item.name ?? "") : \(item.age ?? "")")
//                }
//            }
//        }) { (error) in
//            print(error)
//        }.dispose()
    }
    
}
