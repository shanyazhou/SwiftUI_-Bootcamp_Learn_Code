//
//  ColorPickerBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/8.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea(.all)
            
            ColorPicker("颜色选择器", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(30)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
