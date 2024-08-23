//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/23.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    .foregroundColor(.red)
                    
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(.thinMaterial)//设置磨砂效果
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(Image("dinner"))
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
