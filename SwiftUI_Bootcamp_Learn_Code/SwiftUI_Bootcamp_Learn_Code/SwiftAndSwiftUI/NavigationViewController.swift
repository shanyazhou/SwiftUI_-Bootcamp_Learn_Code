//
//  NavigationViewController.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

import Foundation
import SwiftUI
import UIKit

struct NavigationViewController: UIViewControllerRepresentable {
    
    var vc: UIViewController
    var title: String

    func makeUIViewController(context: Context) -> UINavigationController {
        
        let nvc = UINavigationController(rootViewController: vc)
        return nvc
    }

    func updateUIViewController(_ navigationController: UINavigationController, context: Context) {
         
        navigationController.viewControllers[0].title = title
    }
}

