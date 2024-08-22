//
//  SafeView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/31.
//

import SwiftUI

struct SafeView: View {
    var body: some View {
        
        Rectangle()
            .frame(width: .infinity, height: .infinity)
            .foregroundColor(.red)
            //忽略安全区，本来不到顶，现在忽略顶部的安全区，则直接到顶
            .ignoresSafeArea(.all, edges: .bottom)
            //忽略所有的安全区
            .ignoresSafeArea()
        
        
        

        
        ScrollView{
            VStack{
                Text("Hello, World!")
                    .background(.orange)
                    .frame(width: .infinity, height: .infinity)
                    .background(.yellow)
                
                Text("This is title")
                    .background(.green)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.random)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
        .background(.red)
    }
}

#Preview {
    SafeView()
}
