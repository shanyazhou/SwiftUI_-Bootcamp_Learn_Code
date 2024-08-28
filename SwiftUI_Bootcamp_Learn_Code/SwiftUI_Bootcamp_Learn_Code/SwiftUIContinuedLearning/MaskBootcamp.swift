//
//  MaskBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/28.
//

import SwiftUI

struct MaskBootcamp: View {
    ///选中几个星星⭐️
    @State var selectedStarCount: Int = 0
    
    private var StarView: some View {
        HStack{
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .onTapGesture {
                        selectedStarCount = index
                    }
            }
        }
    }
    
    private var overlayView: some View {
        GeometryReader(content: { geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.yellow)
                    ///单个星星的宽度 * 几个星星
                    .frame(width: geometry.size.width/5.0 * CGFloat(selectedStarCount), height: geometry.size.height)
                    .allowsHitTesting(false)
                    //放在这错误
//                    .mask {
//                        StarView
//                    }
            }
        })
    }
    
    var body: some View {
        VStack(){
            Text("选中了\(selectedStarCount)星星⭐️")
            StarView
                .overlay(){
                    overlayView
                        //只能放在这
                        .mask {
                            StarView
                        }
                }
        }
    }
}


#Preview {
    MaskBootcamp()
}
