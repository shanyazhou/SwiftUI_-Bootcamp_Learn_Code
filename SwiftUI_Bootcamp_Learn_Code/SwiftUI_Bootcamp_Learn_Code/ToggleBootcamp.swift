//
//  ToggleBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/8.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleState: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("按钮状态：\(toggleState)")
                .font(.largeTitle)
            
            Toggle(isOn: $toggleState, label: {
                Text("改变按钮状态：")
            })
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            .padding(.horizontal, 100)
            
            Spacer()
        }
    }
}

#Preview {
    ToggleBootcamp()
}
