//
//  ViewThatFitsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            VStack{
                Text("123456789012345678901234567890")
                Divider()
                Text("123456789012345678901234567890")
                    .lineLimit(1)//限制1行
                    .minimumScaleFactor(0.1)//原来的0.1倍
                Divider()
                //按顺序找：找到最合适（可以显示全）的一个的显示
                ViewThatFits{
                    Text("123456789012345678901234567890")
                    Text("12345678901234567")
                    Text("12345678")
                }
            }
        }
        .frame(height: 300)
        .padding(20)
        .font(.largeTitle)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
