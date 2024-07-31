//
//  BadgesBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea(.all)
            TabView{
                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge("NEW")
                
                Color.yellow
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(10)
                
                Color.green
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(120)
            }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
