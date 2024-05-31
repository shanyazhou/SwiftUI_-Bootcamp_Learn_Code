//
//  StacksView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/31.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0.0, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100, alignment: .center)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100, alignment: .center)
        })
        
        //方法一
        ZStack{
            Circle()
                .fill()
                .frame(width: 100, height: 100)
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
        
        //方法二
        Text("1")
            .font(.title)
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill()
                    .frame(width: 100, height: 100)
            )
    }
}

#Preview {
    StacksView()
}
