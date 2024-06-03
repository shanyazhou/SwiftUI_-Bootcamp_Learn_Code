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
        
        //.flexible：灵活的
        //整分屏幕：如果只有一个，则整屏；如果有两个，则半屏；依次类推
        //spacing：左右间距，即列间距
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        //.adaptive：自适应，以最小值为准，尽量多放
        GridItem(.adaptive(minimum: 50, maximum: 120), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 120), spacing: nil, alignment: nil),
        
        
    ]
    
    var body: some View {
        ScrollView{
            //LazyVGrid没有滚动属性，需要滚动的话，外面要包一个ScrollView
            LazyVGrid(
                columns: columns,
                //居中
                alignment: .center,
                //上下间距，即行间距，默认是6
                spacing: 1,
                //.sectionHeaders：头，划过去不消失，还在前面显示
                pinnedViews: [.sectionHeaders],
                
                content: {
                    ForEach(0..<70) { index in
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.red)
                    }
                })
                .background(.gray)
        }
    }
}

#Preview {
    LearnGridView()
}
