//
//  HomeView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/31.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            List{
                Section {
                    NavigationLink("HomeListView") {
                        HomeListView()
                    }
                } header: {
                    Text("SwiftUIBootcamp")
                        .foregroundStyle(.red)
                }
                
                
                Section {
                    NavigationLink("SwiftUI Todo List") {
                        Text("SwiftUI Todo List")
                    }
                } header: {
                    Text("SwiftUI Todo List")
                        .foregroundStyle(.yellow)
                }
                
                Section {
                    NavigationLink("SwiftUI Continued Learning") {
                        SwiftUIContinuedLearningList()
                    }
                } header: {
                    Text("SwiftUI Continued Learning")
                        .foregroundStyle(.green)
                }
            }
            
           
            
            .navigationTitle("Main Entrance")
        }
    }
}

#Preview {
    HomeView()
}
