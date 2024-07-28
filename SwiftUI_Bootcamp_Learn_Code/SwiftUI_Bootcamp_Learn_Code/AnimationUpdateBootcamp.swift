//
//  AnimationUpdateBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct AnimationUpdateBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                Button("Action 1") {
                    animate1.toggle()
                }
                
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(.orange)
                        
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            }
            
        }
        //value是animate1，则只有animate1才有动画效果
        .animation(.spring, value: animate1)
    }
}

#Preview {
    AnimationUpdateBootcamp()
}
