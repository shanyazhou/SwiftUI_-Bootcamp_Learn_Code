//
//  GradientsView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/30.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        VStack{
            //矩形，圆角25
            RoundedRectangle(cornerRadius: 25.0)
                .fill(//填充
                    //线性渐变
                    //gradient：颜色集合
                    //startPoint：开始
                    //endPoint：结束
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.yellow, Color.pink]), startPoint: .topTrailing, endPoint: .bottom)
                )
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    //放射性渐变
                    //小圆
                    //大圆
                    RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.blue]), center: .center, startRadius: 10.0, endRadius: 120.0)
                )
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    //角度
                    AngularGradient.init(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: .center, angle: .degrees(90))
                )
                .frame(width: 200, height: 200)
        }
        
        
    }
}

#Preview {
    GradientsView()
}
