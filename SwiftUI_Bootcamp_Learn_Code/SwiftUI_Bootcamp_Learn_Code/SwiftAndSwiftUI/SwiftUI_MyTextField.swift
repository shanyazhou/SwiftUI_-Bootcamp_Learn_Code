//
//  SwiftUI_MyTextField.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

import SwiftUI

// 定义一个类负责实现代理
class TextFieldDelegate: NSObject, UITextFieldDelegate {
        
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("开始编辑")
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("输入的内容：\(String(describing: textField.text))")
    }
}

struct SwiftUI_MyTextField: UIViewRepresentable {
    var text: String
    var placeholder: String
    private let delegate = TextFieldDelegate()
    
    func makeUIView(context: UIViewRepresentableContext<SwiftUI_MyTextField>) -> UITextField {
        
        let tmpView = UITextField()
        tmpView.text = text
        tmpView.borderStyle = .roundedRect
        tmpView.placeholder = placeholder
        tmpView.delegate = delegate
        return tmpView
    }
    
    func updateUIView(_ uiView: UITextField, context: UIViewRepresentableContext<SwiftUI_MyTextField>) {
    }
}

#Preview {
    SwiftUI_MyTextField(text: "", placeholder: "")
}
