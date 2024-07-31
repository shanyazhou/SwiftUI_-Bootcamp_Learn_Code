//
//  ToolbarBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var textFieldString: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack{
                //Color.blue.ignoresSafeArea()
                Color.white.ignoresSafeArea()
                
                ScrollView{
                    TextField("Placeholder", text: $textFieldString)
                    Text("你好~")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(width: 200, height: 200)
                            .cornerRadius(10)
                            .foregroundColor(.blue)
                    }
                }
                
                
            }
            .navigationTitle("导航标题")
            //原来的做法
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "heart")
//            )
            
            //toolbar的做法
            .toolbar(content: {
                //左按钮
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                //中间按钮
                ToolbarItem(placement: .principal) {
                    Image(systemName: "gear")
                }
                
                //右按钮
                ToolbarItem(placement: .topBarTrailing) {
                    HStack{
                        Image(systemName: "heart.fill")
                        Image(systemName: "heart")
                    }
                }
                
                ///在键盘上方自定义View
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "gear")
                }
                
                //底部按钮
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "gear")
                        .background(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            })
            //可以控制顶部navigationBar的隐藏与显示
            //.toolbar(.hidden, for: ToolbarPlacement.navigationBar)
            
            
            //控制顶部navigationBar是否隐藏，如果是hidden，则蓝色框直接穿过去
            //.toolbarBackground(.hidden, for: ToolbarPlacement.navigationBar)
            
            //控制navigationBar的颜色：dark light
            //.toolbarColorScheme(.dark, for: .navigationBar)
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("按钮1"){
                    paths.append("按钮1")
                }
                
                Button("按钮2"){
                    paths.append("按钮2")
                }
            }
            
            .navigationDestination(for: String.self) { value in
                Text("value: \(value)")
            }
            
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
