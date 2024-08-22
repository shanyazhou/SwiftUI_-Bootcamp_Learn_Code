//
//  BindingBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/6/29.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            ///在子控件创建的时候，将颜色传进去，加$符，即可完成双向绑定
            VStack {
                ButtonView(xxx: $backgroundColor)
            }
        }
    }
}

///将按钮提出来，不在一个view里面
struct ButtonView: View {
    /// 创建一个本地的属性，加一个@Binding, xxx是随便起的，一般命名与父属性一致，比如：backgroundColor
    @Binding var xxx: Color
    @State var ButtonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            //按钮点击，去改变父类的背景颜色
            xxx = Color.orange//这个，才是子改父
            ButtonColor = Color.red//这个，仅是该View下使用
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(ButtonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingBootcamp()
}
