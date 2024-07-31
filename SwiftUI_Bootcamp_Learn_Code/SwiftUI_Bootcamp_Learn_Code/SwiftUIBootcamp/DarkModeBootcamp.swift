//
//  DarkModeBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/17.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("这个颜色是Primary")
                        .foregroundStyle(.primary)
                    Text("这个颜色是secondary")
                        .foregroundStyle(.secondary)
                    Text("这个颜色是black")
                        .foregroundStyle(.black)
                    Text("这个颜色是white")
                        .foregroundStyle(.white)
                    Text("这个颜色是red")
                        .foregroundStyle(.red)
                    Text("这个颜色是yellow")
                        .foregroundStyle(.yellow)
                    Text("这个颜色是green")
                        .foregroundStyle(.green)
                    Text("这个颜色是全局的自适应颜色（globally adaptive）")
                        .foregroundStyle(.adaptive)
                    Text("本地设置颜色")
                        .foregroundStyle(colorScheme == .light ? .black : .white)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
        
        
    }
}

#Preview {
    DarkModeBootcamp()
}
