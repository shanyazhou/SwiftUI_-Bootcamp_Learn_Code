//
//  BackgroundAndOverlayView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/30.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some View {
        VStack{
            Text("Hello, World!-1")
                .background(.red)
            
            Text("Hello, World!-2")
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                )
            
            Text("Hello, World!-3")
                .background(
                    Circle()
                        .fill(Color.blue)
                )
            
            
            Text("Hello, World!-4")
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(Color.blue)
                )
                
                .frame(width: 130, height: 130)
                .background(){
                    Circle()
                        .fill(Color.red)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            
            
            Text("Hello, World!-5")
                .background(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 120, alignment: .bottom)
                )

                .background(){
                    Circle()
                        .fill(Color.red)
                        .frame(width: 130, height: 130, alignment: .bottom)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 105, trailing: 0))
            
            Text("Hello, World!-6")
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 120, height: 120)
                )

                .background(){
                    Circle()
                        .fill(Color.red)
                        .frame(width: 130, height: 130)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0))
            
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                //可以看出，添加的背景色，在后面，而使用overlay的Text在前面
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 120, height: 120)
                )
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.gray, radius: 10, x: 0.0, y: 10)
                        .overlay(
                            Circle()
                                .fill(.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                        .shadow(color: .gray, radius: 10, x: 5.0, y: 5.0)
                                )
                                
                            , alignment: .bottomTrailing)
                )
            
        }
        
    }
}

//SwiftUI 中的 overlay 修饰符是一个非常强大的工具，它允许你在视图的顶部放置另一个视图，从而实现复杂的层叠效果
//有点像ZStack
struct OverlayExample: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(Color.blue)
            .overlay(
                Text("Overlay Text")
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(radius: 5),
                alignment: .center
            )
    }
}

///两种不同的预览方法：
//方法一：
struct BackgroundAndOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundAndOverlayView()
            OverlayExample()
        }
    }
}

//方法二：
#Preview {
    Group{
        BackgroundAndOverlayView()
        OverlayExample()
    }
}
