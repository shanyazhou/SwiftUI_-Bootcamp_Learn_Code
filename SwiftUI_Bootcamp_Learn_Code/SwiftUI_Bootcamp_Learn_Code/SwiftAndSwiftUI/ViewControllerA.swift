//
//  ViewControllerA.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

//https://juejin.cn/post/7153879743107399710

import Foundation
import UIKit
import SwiftUI

class ViewControllerA: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI(){
        setupJumpButton()
        setupSwiftUIView()
    }
    
    private func setupJumpButton(){
        jumpToSwiftUIButton.frame = CGRect(x: 500, y: 100, width: 300, height: 50)
        self.view.addSubview(jumpToSwiftUIButton)
    }
    
    private func setupSwiftUIView(){
        let sView = SwiftUIViewB()
        let hostingController = UIHostingController(rootView: sView)

        self.addChild(hostingController)
        self.view.addSubview(hostingController.view)
        
        hostingController.didMove(toParent: self)
        hostingController.view.frame = CGRect(x: 50, y: 200, width: 300, height: 200)
        
    }
    
    //MARK: Action
    @objc private func jumpToSwiftUIButtonClick(){
        ///使用UIHostingController包一下
        let swiftUIViewController = UIHostingController(rootView: SwiftUIViewB())
        navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
    
    //MARK: lazy
    private lazy var jumpToSwiftUIButton: UIButton = {
        let jumpToSwiftUIButton = UIButton()
        jumpToSwiftUIButton.setTitle("跳转到SwiftUI", for: .normal)
        jumpToSwiftUIButton.backgroundColor = .green
        jumpToSwiftUIButton.addTarget(self, action: #selector(jumpToSwiftUIButtonClick), for: .touchUpInside)
        return jumpToSwiftUIButton
    }()
}
