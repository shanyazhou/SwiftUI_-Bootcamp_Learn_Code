//
//  SwiftUIContinuedLearningList.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/31.
//

import SwiftUI

struct SwiftUIContinuedLearningList: View {
    var body: some View {
        NavigationStack {
            List{
                Section {
                    NavigationLink("LongPressGestureBootcamp") {
                        LongPressGestureBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                } header: {
                    HStack{
                        Text("示例集合")
                    }
                    //设置section的样式
                    .font(.title)
                    .foregroundColor(.purple)
                }
            }
        }
//        .accentColor(.red)
    }
}

#Preview {
    SwiftUIContinuedLearningList()
}
