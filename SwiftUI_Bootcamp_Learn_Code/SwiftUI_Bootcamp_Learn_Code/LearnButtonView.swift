//
//  LearnButtonView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/6/1.
//

import SwiftUI

struct LearnButtonView: View {
    
    //@State 被观察的
    @State var title = "This is my title"
    
    var body: some View {
        VStack{
            Text(title)
            
            //创建方式一
            Button("Press Me") {
                self.title = "Button was press"
            }
            .tint(.red)//button文字变颜色
            
            //创建方式二
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)//字体颜色
                    .font(.headline)//字体大小
                    .padding()//字体与背景颜色直接加间距
                    .padding(.horizontal, 20)//水平方向，再加20
                    .background(
                        Color.blue
                        .cornerRadius(10)//圆角
                        .shadow(radius: 10)//阴影
                    )
            })
            
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                ZStack{
                    Circle()
                        .fill(.white)
                        .frame(width: 60, height: 60)
                        .shadow(radius: 10)
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .foregroundColor(.red)
                }
            })
        }
    }
}

#Preview {
    LearnButtonView()
}
