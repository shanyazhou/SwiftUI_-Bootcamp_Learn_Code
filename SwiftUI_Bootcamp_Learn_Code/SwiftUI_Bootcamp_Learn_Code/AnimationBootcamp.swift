//
//  AnimationBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/6/30.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimation: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                withAnimation(
                    Animation
                        .default
                        //重复
                        //autoreverses: true：A-B-A-B
                        //false: A-B，A-B
                        .repeatForever(autoreverses: true)){
                    isAnimation.toggle()
                }
                
            }
            
            Spacer()
            
            Rectangle()
                .fill(isAnimation ? .green : .red)
                .cornerRadius(isAnimation ? 10 : 50)
                .frame(
                    width: isAnimation ? 300 : 100,
                    height: isAnimation ? 300 : 100)
                //移动距离
                .offset(y: isAnimation ? 200 : 0)
                //转动角度
                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
            
            
            Spacer()
        }
        
        
        
    }
}

#Preview {
    AnimationBootcamp()
}
