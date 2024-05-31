//
//  LearnGridView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/31.
//

import SwiftUI

struct LearnGridView: View {
    let columns: [GridItem] = [
        //.fixed：固定大小
        GridItem(.fixed(50), spacing: nil, alignment: nil),//代表一列
        GridItem(.fixed(150), spacing: nil, alignment: nil),
        
        GridItem(.adaptive(minimum: 12, maximum: 120), spacing: nil, alignment: nil),
        GridItem(.flexible(minimum: 12, maximum: 120), spacing: nil, alignment: nil)
        
    ]
    
    var body: some View {
        
        LazyVGrid(columns: columns, content: {
            ForEach(0..<7) { index in
                Rectangle()
                    .foregroundColor(.red)
            }
            
        })
        .background(.gray)
        
    }
}

#Preview {
    LearnGridView()
}
