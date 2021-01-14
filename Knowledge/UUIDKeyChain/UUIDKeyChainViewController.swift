//
//  UUIDKeyChainViewController.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 28/4/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import UIKit

class UUIDKeyChainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let uuid = UUIDKeyChainManager.shared.getUUID()
        print(uuid)
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
