//
//  SafeAreaInsetBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                
                Rectangle()
                    .foregroundColor(.blue)//长方形的背景颜色
                    .frame(height: 100)
                
                //list的背景颜色
                .listRowBackground(Color.green)
            }
            .navigationTitle("Safe Area Inset")
            
            //其他用法：固定在头部
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Hi1")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            }
            
            //其他用法：固定在某处
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Text("Hi2")
                    .padding()
                    .background(.yellow)
                    .clipShape(Circle())//剪成圆形
                    .padding()
            }
            
            //方法一：
//            .overlay(alignment: .bottom, content: {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//            })
            
            //方法二：使用Safe Area Inset
            .safeAreaInset(edge: .bottom, alignment: .center) {
                Text("Hi3")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            }
            
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
