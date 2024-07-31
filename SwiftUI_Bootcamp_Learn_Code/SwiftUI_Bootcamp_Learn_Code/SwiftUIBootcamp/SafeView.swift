//
//  SafeView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/31.
//

import SwiftUI

struct SafeView: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.red)
            .frame(width: .infinity, height: .infinity)
            
        Rectangle()
            .frame(width: .infinity, height: .infinity)
            .foregroundColor(.red)
            //忽略安全区，本来不到顶，现在忽略顶部的安全区，则直接到顶
            .ignoresSafeArea(.all, edges: .bottom)
            //忽略所有的安全区
            .ignoresSafeArea()
        
        
        ScrollView{
            VStack{
                Text("This is title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
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
