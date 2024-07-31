//
//  SheetsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/1.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var isPresented1: Bool = false
    @State var isPresented2: Bool = false
    @State var isPresented3: Bool = false
    @State var isPresented4: Bool = false
    
    var body: some View {
        
        ZStack {
            ///绿色背景
            Color.green
                .edgesIgnoringSafeArea(.all)//全部填充满
            
            VStack{
                Button(action: {
                    isPresented1.toggle()
                }, label: {
                    Text(".sheet")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(5.0))
                })
                
                Button(action: {
                    isPresented2.toggle()
                }, label: {
                    Text(".fullScreenCover")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(5.0))
                })
                
                Button(action: {
                    isPresented3.toggle()
                }, label: {
                    Text("Transition")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(5.0))
                })
                
                Button(action: {
                    isPresented4.toggle()
                }, label: {
                    Text("Animation")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(5.0))
                })
            }
            
            ///pop出下一个view
            .sheet(isPresented: $isPresented1, content: {
                NextSheetsBootcamp(isPresented: $isPresented1)
            })
            
            
            ///全屏出现
            .fullScreenCover(isPresented: $isPresented2, content: {
                NextSheetsBootcamp(isPresented: $isPresented2)
            })
            
            ///方法二：Transition
            ZStack{
                if isPresented3 {
                    NextSheetsBootcamp(isPresented: $isPresented3)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring)
                }
            }
            //设置了视图的堆叠顺序(不加这个，也有动画效果)
            .zIndex(2)
            
            
            ///方法三：Animation
            NextSheetsBootcamp(isPresented: $isPresented4)
                .padding(.top, 100)
                .offset(y: isPresented4 ? 0 : UIScreen.main.bounds.height)
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
                presentationMode.wrappedValue.dismiss()
                
                ///方法二、三的关闭
//                isPresented.toggle()
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
