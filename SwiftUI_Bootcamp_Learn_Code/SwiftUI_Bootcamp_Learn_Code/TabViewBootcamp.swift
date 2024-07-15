//
//  TabViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/13.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTabIndex: Int = 0
    
    var body: some View {
        
        TabView (selection: $selectedTabIndex){
            
            Text("首页")
                .tabItem {
                    Text("首页")
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            GlobeView(selectedTabIndex: $selectedTabIndex)
                .tabItem {
                    Text("浏览")
                    Image(systemName: "globe.asia.australia")
                }
                .tag(1)
            
            PersonView()
                .tabItem {
                    Text("我的")
                    Image(systemName: "person.fill")
                }
                .tag(2)
        }
        .tint(.orange)
        
    }
}

#Preview {
    TabViewBootcamp()
}

struct GlobeView: View {
     
    @Binding var selectedTabIndex: Int
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(.all, edges: .top)
            
            VStack{
                Text("浏览内容")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button {
                    self.selectedTabIndex = 2
                } label: {
                    Text("跳转到我的页")
                        .foregroundStyle(.white)
                        .font(.title)
                }
                .padding()
                .background(.blue)
                .cornerRadius(10.0)

            }
        }
        
    }
}

struct PersonView: View {
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        //必须加VStack，不然就凭空都了一个“我的”
        VStack{
            Text("我的内容")
            
            TabView {
                ForEach(icons, id: \.self) { item in
                    Image(systemName: item)
                        //可调节大小的
                        .resizable()
                        .foregroundStyle(.blue).opacity(0.8)
                        .padding(30)
                }
                
                Rectangle()
                    .foregroundStyle(.red)
                Rectangle()
                    .foregroundStyle(.green)
                Rectangle()
                    .foregroundStyle(.yellow)
            }
            //分页样式
            .tabViewStyle(PageTabViewStyle())
            .frame(maxWidth: .infinity, maxHeight: 400)
            .cornerRadius(10)
            
            //背景色
            .background(
                ///渐变色
                ///gradient：渐变的颜色
                ///center: 位置
                ///startRadius开始的长度，endRadius结束的长度
                RadialGradient(gradient: Gradient(colors: [.red, .green, .yellow]), center: .topLeading, startRadius: 0.0, endRadius: 500.0)
            )
        }
    }
}
