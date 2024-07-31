//
//  NavigationViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/2.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView {
                
                ///需要点击跳转的，加上NavigationLink
                NavigationLink("Hello") {
                    //下一个View的内容
                    SecondNavigationViewBootcamp()
                }
                
                Text("Hello，navigationView1")
                Text("Hello，navigationView2")
                Text("Hello，navigationView3")
                Text("Hello，navigationView4")
            }
            .navigationTitle("Title")
            .navigationBarTitleDisplayMode(.large)
//            .toolbar(.hidden)
            
            //leading：左边items
            //trailing：右边items
            .navigationBarItems(leading:
                                    HStack{
                                    Image(systemName: "person.fill")
                                    Image(systemName: "flame.fill")
                                },
                                trailing: NavigationLink(destination: {
                                    SecondNavigationViewBootcamp()
                                }, label: {
                                    Image(systemName: "gear")
                                }))
            
        }
    }
}

struct SecondNavigationViewBootcamp: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("navigationTitle2")
            
            NavigationLink("Click here", destination: Text("第三个Nav内容"))
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
