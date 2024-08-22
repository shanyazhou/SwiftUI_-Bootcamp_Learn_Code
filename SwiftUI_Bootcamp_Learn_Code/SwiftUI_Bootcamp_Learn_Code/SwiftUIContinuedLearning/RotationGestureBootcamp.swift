//
//  RotationGestureBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/3.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    
    @State private var angle: Angle = Angle(degrees: 0.0)
    
    var body: some View {
        Text("Hello, World!")
            //.frame(width: 300, height: 100)
            .padding(50)
            .foregroundStyle(.white)
            .background(.blue)
            .cornerRadius(10.0)
            .font(.largeTitle)
            .rotationEffect(angle)
            //注意：切圆角不要放在rotationEffect后面
//            .cornerRadius(10.0)
            .gesture(
                RotationGesture()
                    .onChanged({ value in
                        angle = value
                    })
                
                    .onEnded({ value in
//                        withAnimation(.spring) {
//                            angle = Angle(degrees: 0.0)
//                        }
                        
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0.0)
                        }
                    })
            )
        
    }
}

#Preview {
    RotationGestureBootcamp()
}
