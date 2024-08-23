//
//  TextEditorBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/8.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorString: String = "占位字"
    @State var saveTextString: String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorString)
                    ///使用这个设置文本框的背景颜色比较好
                    .transparentScrolling()
                    .background(Color.gray.opacity(0.3))
                    .font(.largeTitle)
                    .frame(height: 300)
                    .foregroundStyle(.red)
                    .cornerRadius(10)
                    .padding(10)
                    //这个背景颜色，会将字体一起添加上透明度
//                    .colorMultiply(.gray.opacity(0.3))
                    //这个颜色，区域不是文字的背景色
//                    .background(.gray.opacity(0.3))
                    
                //这个颜色对了，但是，文字不可以输入了
//                    .overlay(
//                        Color.gray.opacity(0.3).cornerRadius(10)
//                    )
            
                Button(action: {
                    saveTextString = textEditorString
                }, label: {
                    Text("保存")
                        //先设置frame才生效
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        .padding(10)
                        //这里设置，按钮大小是对的，但是颜色值等不生效，因为是根据顺序渲染的
//                        .frame(maxWidth: .infinity)
                })
                
                Text(saveTextString)
                    .padding()
                
                Spacer()
            }
            .navigationTitle("导航标题")
        }
    }
}

public extension View {
    func transparentScrolling() -> some View {
        if #available(iOS 16.0, *) {
            return scrollContentBackground(.hidden)
        } else {
            return onAppear {
                UITextView.appearance().backgroundColor = .clear
            }
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
