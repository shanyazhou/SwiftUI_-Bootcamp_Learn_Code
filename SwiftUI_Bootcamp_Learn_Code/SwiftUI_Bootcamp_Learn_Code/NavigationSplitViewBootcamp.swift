//
//  NavigationSplitViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

///NavigationSplitView主要应用在iPad
struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .detailOnly
    
    var body: some View {
//        NavigationSplitView {
//            ZStack{
//                Color.red//左边的view
//                Text("123")
//            }
//            
//        } detail: {
//            ZStack{
//                Color.blue//留下的大的view
//                Text("456")
//            }
//            
//        }
//        
        
        NavigationSplitView {
            Color.red//最左边的view
        } content: {
            Color.green//中间的view（横屏的时候，绿色是显示的）
        } detail: {
            Color.blue//留下的大的view
        }
        
        
        NavigationSplitView(columnVisibility: $visibility) {
            Color.red//最左边的view
        } content: {
            Color.green//中间的view  $visibility可以控制这个 相当于自定义
        } detail: {
            ZStack(alignment: .topLeading){
                Color.blue//留下的大的view
                Text("123")
                    .padding(.leading, 10)
                    .padding(.top, 15)
            }
        }
        .navigationSplitViewStyle(.prominentDetail)//控制右边有没有黑色图层。其实是在他蓝色上面？还是在蓝色右边


    }
}

#Preview {
    NavigationSplitViewBootcamp()
}
