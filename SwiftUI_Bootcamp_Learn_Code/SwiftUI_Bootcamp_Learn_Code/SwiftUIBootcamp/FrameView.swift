//
//  FrameView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/30.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                //.infinity最大值
                .frame(maxWidth: .infinity, maxHeight: 300, alignment: .top)
                .background(.red)
            
            Text("你好~")
                //文字红色
                .background(.red)
                
                //设置高度100，颜色橙色
                .frame(height: 100)
                .background(.orange)
            
                .frame(width: 150)
                .background(.purple)
            
                .frame(maxWidth: .infinity)
                .background(.pink)
                
                .frame(height: 400)
                .background(.green)
                
                .frame(maxHeight: .infinity)
                .background(.yellow)
        }
        
    }
}

#Preview {
    FrameView()
}
