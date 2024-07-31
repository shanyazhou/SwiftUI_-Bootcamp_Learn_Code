//
//  GroupBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello, World!")
            
            //使用Group，统一处理。而不需要建立Stack
            Group{
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.subheadline)
            .foregroundStyle(.green)
        }
        .foregroundColor(.red)
        .font(.largeTitle)
    }
    
}

#Preview {
    GroupBootcamp()
}
