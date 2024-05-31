//
//  SpacerView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/31.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: "heart")
                    .font(.largeTitle)
                //隔开
                Spacer()
                Image(systemName: "gear")
                    .font(.largeTitle)
                //最小隔离100，more是8
                //Spacer(minLength: 10)
            }
            .padding(.horizontal)
            //垂直隔离
            Spacer()
            
            HStack{
                Spacer()
                    .frame(height: 5)//注意，这两个不能上下写反
                    .background(.orange)//注意，这两个不能上下写反
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 5)
                    .background(.orange)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 5)
                    .background(Color.orange)
            }
            .background(.gray)
            
            //垂直隔离
            Spacer()
            
            Rectangle()
                .fill(.green)
                .frame(width: .infinity, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    SpacerView()
}
