//
//  ColorView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/30.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            //填充颜色
            //.fill(Color.red)
            .fill(
//                Color(UIColor.blue)
                Color("CustomColor")//自定义颜色
            )
            .frame(width: 250, height: 100)
            //阴影
            .shadow(color: .gray, radius: 20, x: 0, y: 1)
    }
}

#Preview {
    ColorView()
}
