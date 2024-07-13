//
//  SwiftUI_ContentView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

// https://juejin.cn/post/6844904082067603463

import SwiftUI

struct SwiftUI_ContentView: View {
    var isAnimating: Bool = true
    @State private var selectedSegmentIndex: Int = 1
          
    var body: some View {
        //SwiftUI调用Swift
        ActivityIndicator(isAnimating: isAnimating)
        
        //方案二
        Map()
            .frame(width: 300, height: 300)
        //方案三
        SwiftUI_MyTextField(text: "", placeholder: "请输入内容").frame(height: 40).padding()
        
        ///方案四
        SegmentControl(selectedSegmentIndex: $selectedSegmentIndex)
        
        ///导航
        NavigationViewController(vc: UIViewController(), title: "UIViewControllerRepresentable")
        Spacer()
    }
}

#Preview {
    SwiftUI_ContentView()
}
