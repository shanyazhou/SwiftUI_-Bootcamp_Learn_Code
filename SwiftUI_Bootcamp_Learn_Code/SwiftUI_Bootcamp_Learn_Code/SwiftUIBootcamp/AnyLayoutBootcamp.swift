//
//  AnyLayoutBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12, content: {
            Text("HorizontalSizeClass: \(horizontalSizeClass.debugDescription)")
            
            Text("VerticalSizeClass: \(verticalSizeClass.debugDescription)")
        })
        
        
        ///如果水平方向比较紧凑，那么就VStack
        if horizontalSizeClass == .compact {
            VStack{
                Text("1111111111")
                Text("2222222222")
                Text("33333333333")
            }
        }else{//如果水平方向比较能放下，那么就HStack
            HStack{
                Text("1111111111")
                Text("2222222222")
                Text("33333333333")
            }
        }
        
        //以上借助AnyLayout可以简化：
        let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
        layout{
            Text("1111111111")
            Text("2222222222")
            Text("33333333333")
        }
        
        
    }
}

#Preview {
    AnyLayoutBootcamp()
}
