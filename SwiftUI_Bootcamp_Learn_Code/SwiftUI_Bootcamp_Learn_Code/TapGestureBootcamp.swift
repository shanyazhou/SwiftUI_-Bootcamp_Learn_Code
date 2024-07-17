//
//  TapGestureBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/17.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .foregroundStyle(isSelected ? .red : .green)
                .cornerRadius(30)
                .frame(height: 200)
                .padding(.bottom, 20)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(5)
            })
            .padding(.bottom, 20)
            
            Text("Tap Gesture")
                .foregroundStyle(.white)
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(5)
                //添加tapGesture
                .onTapGesture {
                    isSelected.toggle()
                }
        }
        .padding(50)
        
        Spacer()
    }
}

#Preview {
    TapGestureBootcamp()
}
