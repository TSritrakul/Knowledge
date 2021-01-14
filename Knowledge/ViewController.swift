//
//  ViewController.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 26/4/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let singleton = SingletonData.shared
        print("Main: \(singleton.getString())")
    }

    @IBAction func singleton(_ sender: UIButton) {
        let vc = SigletonViewController(nibName: "SigletonViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func UUIDKeyChain(_ sender: UIButton) {
        let vc = UUIDKeyChainViewController(nibName: "UUIDKeyChainViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func scrollView(_ sender: Any) {
        let vc = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func RxSwift(_ sender: UIButton) {
        let vc = RxSwiftViewController(nibName: "RxSwiftViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func dispatch(_ sender: UIButton) {
        let vc = DispatchViewController(nibName: "DispatchViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func coreData(_ sender: UIButton) {
        let vc = CoreDataViewController(nibName: "CoreDataViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func swiftUI(_ sender: UIButton) {
        let vc = UIHostingController(rootView: HomeWrapperView())
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func combine(_ sender: UIButton) {
        let vc = UIHostingController(rootView: TextFieldView(viewModel: TextFieldViewModel()))
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
