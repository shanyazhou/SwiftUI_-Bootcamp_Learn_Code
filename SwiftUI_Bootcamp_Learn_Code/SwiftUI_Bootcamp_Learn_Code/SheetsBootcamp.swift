//
//  SheetsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/1.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        
        ZStack {
            ///绿色背景
            Color.green
                .edgesIgnoringSafeArea(.all)//全部填充满
            
            Button(action: {
                isPresented.toggle()
            }, label: {
                Text("pop另外一个view")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(5.0))
            })
            
//            ///pop出下一个view
//            .sheet(isPresented: $isPresented, content: {
//                NextSheetsBootcamp(isPresented: $isPresented)
//            })
            
            
//            ///全屏出现
//            .fullScreenCover(isPresented: $isPresented, content: {
//                NextSheetsBootcamp()
//            })
            
            ///方法二：Transition
            ZStack{
                if isPresented {
                    NextSheetsBootcamp(isPresented: $isPresented)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring)
                }
            }
            //设置了视图的堆叠顺序(不加这个，也有动画效果)
            .zIndex(2)
            
            
            ///方法三：Animation
            NextSheetsBootcamp(isPresented: $isPresented)
                .padding(.top, 100)
                .offset(y: isPresented ? 0 : UIScreen.main.bounds.height)
                .animation(.spring)
        }
    }
}

///出现的新View
struct NextSheetsBootcamp: View {
    ///固定写法
    @Environment(\.presentationMode) var presentationMode
    
    ///反向传值，即子控制父
    @Binding var isPresented: Bool
    var body: some View {
        ///关闭按钮在左上角
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                ///点击按钮，关闭popView
//                presentationMode.wrappedValue.dismiss()
                
                ///方法二、三的关闭
                isPresented.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}


#Preview {
    SheetsBootcamp()
}
