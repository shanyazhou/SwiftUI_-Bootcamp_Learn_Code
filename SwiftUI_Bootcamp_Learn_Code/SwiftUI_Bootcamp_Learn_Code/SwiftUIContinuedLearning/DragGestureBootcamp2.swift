//
//  DragGestureBootcamp2.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/26.
//

import SwiftUI

struct DragGestureBootcamp2: View {
    
    public let kScreenWidth = UIScreen.main.bounds.width
    public let kScreenHeight = UIScreen.main.bounds.height
    
    ///开始的地方
    @State var staringOffsetY: CGFloat = UIScreen.main.bounds.height * 0.82
    @State var currentDragOffsetY: CGFloat = 0
    @State var endDragOffsetY: CGFloat = 0
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            MySignUpView()
//                .offset(CGSize(width: 0, height: staringOffsetY))
                .offset(y: staringOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endDragOffsetY)
                //影响是.offset累加的结果
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            currentDragOffsetY = value.translation.height
                        })
                    
                        .onEnded({ value in
                            
                            ///可以停上、中、下三个地方
                            
                            var totalOffsetY = staringOffsetY + currentDragOffsetY + endDragOffsetY
                            ///如果小于0.5，松手后直接到顶部
                            ///如果大于0.5，但是小于0.82，松手后露半截
                            ///如果大于0.82，松手后，只露一点点
                            
                            if (totalOffsetY < kScreenHeight * 0.5){
                                 endDragOffsetY = -staringOffsetY
                                 currentDragOffsetY = 0
                             } else if(totalOffsetY > kScreenHeight * 0.5 && totalOffsetY < kScreenHeight * 0.7){
                               
                               endDragOffsetY = -UIScreen.main.bounds.height * 0.4
                               currentDragOffsetY = 0.0
                             }else{
                                endDragOffsetY = 0.0
                                currentDragOffsetY = 0.0
                             }
                            
                            ///可以停上、下两个地方
                            ///往上推150，就到顶
//                            if (currentDragOffsetY < -150){
//                                 endDragOffsetY = -staringOffsetY
//                                 currentDragOffsetY = 0
//                             } else if(endDragOffsetY != 0 && currentDragOffsetY > 150){//往下拉150，就到低
//                               endDragOffsetY = 0
//                               currentDragOffsetY = 0.0
//                             }else{
//                                currentDragOffsetY = 0.0
//                             }
                            
                        })
                )
            
            Text("\(currentDragOffsetY)")
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    DragGestureBootcamp2()
}

struct MySignUpView: View {
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "chevron.up")
                .padding(.top)
            
            Text("登录")
                .font(.title)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述这里是描述")
                .multilineTextAlignment(.center)
            
            Text("Create an account")
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .cornerRadius(10)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        //切角在背景色后面写
        .cornerRadius(20.0)
    }
}
