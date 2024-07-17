//
//  OnAppearBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/17.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var textString: String = "这是一个初始的字符串"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(textString)
                
                LazyVStack{
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .cornerRadius(30.0)
                            .frame(height: 300)
                            .padding()
                            .onAppear(perform: {
                                count += 1
                            })
                    }
                }
            }
            
            .onAppear(perform: {
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
                    textString = "这是onAppear后的字符串"
                }
            })
            
            .onDisappear(perform: {
                //view不显示的时候调用
            })
            
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
