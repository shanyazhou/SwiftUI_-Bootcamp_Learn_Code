//
//  ScrollViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/31.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack{
                ForEach(0..<100) { _ in
                    //方向：水平，不展示指示标
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { _ in
                                Rectangle()
                                    //填充颜色
                                    .foregroundColor(Color.random)
                                    .frame(width: 200, height: 150)
                                    //切圆角
                                    .cornerRadius(13.0)
                                    //加阴影
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
