//
//  SliderBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/13.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue1: CGFloat = 0.0
    @State var sliderValue2: CGFloat = 0.0
    @State var sliderValue3: CGFloat = 50.0
    @State var sliderValue4: CGFloat = 50.0
    
    @State var myColor: Color = .red
    
    var body: some View {
        VStack {
            Text("value: \(sliderValue1)")
            Slider(value: $sliderValue1) {
                Text("\(sliderValue1)")
            }
            
            
            Text("value: \(sliderValue2)")
            //给个步长step
            Slider(value: $sliderValue2, in: 0...10, step: 2)
            
            
            Text("value: \(sliderValue3)")
            Slider(value: $sliderValue3, in: 0...100) {
                //改变的过程
                Text("123")
                
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { (_) in
                myColor = .green
                myColor = .green.opacity(sliderValue3/100)
            }
            
            // 使用颜色插值从黑色到白色
            Text("滑动控制颜色变化")
            Color(white: sliderValue1)
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            
            //滑动控制颜色变化
            Text("滑动控制颜色变化")
            Rectangle()
                .fill(Color(hue: sliderValue1, saturation: 1.0, brightness: 1.0))
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            
            Slider(value: $sliderValue1, in: 0...1)
                .padding()
                .accentColor(Color(hue: sliderValue1, saturation: 1.0, brightness: 1.0))//颜色渐变
            Spacer()
            
            //自动变化颜色
            Text("自动颜色变化")
            Rectangle()
                .fill(Color(hue: sliderValue4, saturation: 1.0, brightness: 1.0))
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            
        }
        
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.08, repeats: true) { _ in // 你也可以调节时间间隔
                withAnimation(Animation.linear(duration: 0.01)) { //确保颜色变化动画是线性的
                    self.sliderValue4 += 0.01
                    if self.sliderValue4 > 1.0 {
                        self.sliderValue4 = 0.0 // 重置以继续循环
                    }
                }
            }
        }
    }
}

#Preview {
    SliderBootcamp()
}
