//
//  SwiftUIViewModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 5/7/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class SwiftUIViewModel: ObservableObject {
    init() {}
    
    private var currentViewController: UIViewController {
        return UIViewController.topViewController() ??  UIViewController()
    }
    
    func presentUIKitView() {
        let viewController = UIKitViewController(nibName: "UIKitViewController", bundle: nil)
        self.currentViewController.navigationController?.pushViewController(viewController, animated: true)
    }
}

public extension UIViewController {
    class func topViewController() -> UIViewController? {
        return self.topViewControllerWithRootViewController(rootViewController: UIApplication.shared.windows.first(where: {$0.isKeyWindow})?.rootViewController)
    }
    
    class func topViewControllerWithRootViewController(rootViewController: UIViewController?) -> UIViewController? {
        
        if rootViewController is UITabBarController {
            let control = rootViewController as! UITabBarController
            return self.topViewControllerWithRootViewController(rootViewController: control.selectedViewController)
        } else if rootViewController is UINavigationController {
            let control = rootViewController as! UINavigationController
            return self.topViewControllerWithRootViewController(rootViewController: control.visibleViewController)
        } else if let control = rootViewController?.presentedViewController {
            return self.topViewControllerWithRootViewController(rootViewController: control)
        } else if let control = rootViewController?.children.first {
            return self.topViewControllerWithRootViewController(rootViewController: control)
        }
        return rootViewController
        
    }
}
