//
//  SwiftUIViewB.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

import SwiftUI

struct SwiftUIViewB: View {
    var body: some View {
        ZStack{
            
            Color.cyan
            
            Text("Hello, Word!")
                .foregroundStyle(.white)
                .font(.largeTitle)
        }
        
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SwiftUIViewB()
}
