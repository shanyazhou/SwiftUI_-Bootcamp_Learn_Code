//
//  ShapesBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack{
            Circle()
                .stroke(Color.red)//空心
                .frame(width: 100, height: 100)
            
            Ellipse()
                .fill(Color.red)//填充
                .frame(width: 150, height: 100)
            
            Rectangle()//长方形
                .fill(Color.purple)//填充
                .frame(width: 350, height: 100)
            
            RoundedRectangle(cornerRadius: 50)//切圆角
                .frame(width: 150, height: 100)
            
        }
    }
}

#Preview {
    ShapesBootcamp()
}
