//
//  ResizableSheetBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detents: $detents)
            
                //默认是large，也就是全屏
                //medium是一半的效果
                .presentationDetents([.large, .medium])
                //hidden是隐藏上面的指示器
                .presentationDragIndicator(.hidden)
                //交互消失不可以，就是，不让消失
//                .interactiveDismissDisabled()
            
                //自定义高度，是一个比例值0-1取值
                .presentationDetents([.fraction(0.9)])
                
                //按照高度显示
                .presentationDetents([.height(100)])
            
            
                .presentationDetents([.medium, .large, .fraction(0.1)], selection: $detents)
        })
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            VStack{
                Text("Hello World~")
                
                Button("Medim"){
                    //这里面的值，必须在包含在Detents数组里面
                    detents = .medium
                }
                
                Button("Large"){
                    //这里面的值，必须在包含在Detents数组里面
                    detents = .large
                }
                
                Button("fraction(0.1)"){
                    //这里面的值，必须在包含在Detents数组里面
                    detents = .fraction(0.1)
                }
            }
        }
        .onDisappear(perform: {
            detents = .large
        })
    }
    
    
}

#Preview {
    ResizableSheetBootcamp()
}
