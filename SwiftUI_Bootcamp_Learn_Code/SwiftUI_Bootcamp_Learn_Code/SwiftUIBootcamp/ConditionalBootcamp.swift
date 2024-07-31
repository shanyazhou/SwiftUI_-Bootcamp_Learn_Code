//
//  ConditionalBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/6/30.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    
    var body: some View {
        
        Button("Circle Button: \(showCircle.description)") {
            showCircle = !showCircle
        }
        
        if showCircle == true{
            Circle()
                .frame(width: 100, height: 100)
        }
        
    }
}

#Preview {
    ConditionalBootcamp()
}
