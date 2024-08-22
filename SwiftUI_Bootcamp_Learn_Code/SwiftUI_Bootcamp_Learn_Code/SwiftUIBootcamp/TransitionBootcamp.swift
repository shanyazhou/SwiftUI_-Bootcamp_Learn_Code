//
//  TransitionBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/6/30.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var isShowView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    //等价于：isShowView = !isShowView
                    isShowView.toggle()
                }
                Spacer()
            }
            
            if isShowView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //从什么地方进，从什么地方出
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)))
                    ///动画：慢进慢出
                    .animation(.easeInOut)
            }
        }
        
        ///忽略底部的间隙
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
