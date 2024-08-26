//
//  DragGestureBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/23.
//

import SwiftUI

struct DragGestureBootcamp: View {
    @State var offset: CGSize = .zero
    
    var body: some View {
        VStack{
            Text("移动的宽度: offset = \(offset.width)")
            Spacer()
            Rectangle()
                .cornerRadius(20.0)
                .frame(width: 300, height: 500)
                //大小缩放
                .scaleEffect(getScaleAmount())
                //角度旋转
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .offset(offset)
                .foregroundColor(.green)
            
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            //translation:类型CGSize
                            /// This is equivalent to `location.{x,y} - startLocation.{x,y}`.
                            offset = value.translation
                        })
                        .onEnded({ value in
                            withAnimation(.spring){
                                offset = .zero
                            }
                            
                        })
                )
        }
    }
    
    ///左滑、右滑缩小
    func getScaleAmount() -> CGFloat {
        let maxValue = UIScreen.main.bounds.width / 2.0
        let currentAmount = abs(offset.width)
        let percentage = currentAmount/maxValue
        return 1 - (min(percentage, 0.5) * 0.5)
    }
    
    ///左滑、优化旋转
    func getRotationAmount() -> Double {
        let maxValue = UIScreen.main.bounds.width / 2.0
        let currentAmount = offset.width
        let percentage = currentAmount/maxValue
        //转换为Double类型
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10
        return percentageAsDouble * maxAngle
    }
}

#Preview {
    DragGestureBootcamp()
}
