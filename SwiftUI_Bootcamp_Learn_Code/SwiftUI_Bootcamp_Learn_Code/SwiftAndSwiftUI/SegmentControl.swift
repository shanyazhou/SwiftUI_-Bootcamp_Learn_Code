//
//  SegmentControl.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

import Foundation
import SwiftUI
import UIKit

// 自定义个SegmentControl控件
struct SegmentControl: UIViewRepresentable {
    
    @Binding var selectedSegmentIndex: Int

    // 下面两个方法都是和 UIKit 相关
    func makeUIView(context: Context) -> UISegmentedControl {
        
        let segmentControl = UISegmentedControl()
        segmentControl.insertSegment(withTitle: "红", at: 0, animated: true)
        segmentControl.insertSegment(withTitle: "黄", at: 1, animated: true)
        segmentControl.insertSegment(withTitle: "蓝", at: 2, animated: true)
        segmentControl.selectedSegmentIndex = selectedSegmentIndex
        
        // 注意这里的参数，与Coordinator有关
        segmentControl.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)

        return segmentControl
    }

    func updateUIView(_ uiView: UISegmentedControl, context: Context) {
        uiView.selectedSegmentIndex = selectedSegmentIndex
    }

    // 协议的方法之一，返回一个协调器
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    // 自定义协调器，UIKit与SwiftUI交互的地方
    class Coordinator: NSObject {
        var control: SegmentControl
        
        init(_ control: SegmentControl) {
            self.control = control
        }
        
        @objc func updateCurrentPage(sender: UISegmentedControl) {
            control.selectedSegmentIndex = sender.selectedSegmentIndex
        }
    }
}
