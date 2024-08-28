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
                    
                    NavigationLink("MagnificationGestureBootcamp") {
                        MagnificationGestureBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("DragGestureBootcamp") {
                        DragGestureBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("DragGestureBootcamp2") {
                        DragGestureBootcamp2()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ScrollViewReaderBootcamp") {
                        ScrollViewReaderBootcamp(textString: "0")
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("GeometryReaderBootcamp") {
                        GeometryReaderBootcamp3()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("MultipleSheetsCorrect3Bootcamp") {
                        MultipleSheetsCorrect3Bootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("SoundsBootcamp") {
                        SoundsBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("HapticsBootcamp") {
                        HapticsBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("HashableBootcamp") {
                        HashableBootcamp()
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
