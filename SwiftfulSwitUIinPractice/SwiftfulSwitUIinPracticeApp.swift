//
//  SwiftfulSwitUIinPracticeApp.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 28/3/2567 BE.
//

import SwiftUI
import SwiftfulRouting

@main
struct SwiftfulSwitUIinPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView{ _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate{
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
