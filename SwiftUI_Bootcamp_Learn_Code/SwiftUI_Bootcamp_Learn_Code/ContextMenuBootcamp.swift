//
//  ContextMenuBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/5.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: "house")
                .font(.largeTitle)
            
            Text("SwiftUI Thinking")
                .font(.title2)
            
            Text("How to use Context Menu")
                .font(.title3)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        ///长按，而不是点按
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = Color.red
            }, label: {
                Label("标题1", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = Color.green
            }, label: {
                Text("标题2")
            })
            Button(action: {
                backgroundColor = Color.yellow
            }, label: {
                Text("标题2")
                Image(systemName: "heart.fill")
            })
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
