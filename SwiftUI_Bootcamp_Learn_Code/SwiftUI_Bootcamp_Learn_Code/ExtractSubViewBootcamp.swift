//
//  ExtractSubViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct ExtractSubViewBootcamp: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            contentLay
        }
    }
    
    var contentLay: some View {
        HStack{
            MyItem(count: 1, title: "apple", myColor: .red)
            MyItem(count: 19, title: "orange", myColor: .orange)
            MyItem(count: 33, title: "banana", myColor: .yellow)
        }
    }
}


struct MyItem: View {
    let count: Int
    let title: String
    let myColor: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()//增加间距
        .background(myColor)
        .cornerRadius(10)//加圆角
    }
}

#Preview {
    ExtractSubViewBootcamp()
}
