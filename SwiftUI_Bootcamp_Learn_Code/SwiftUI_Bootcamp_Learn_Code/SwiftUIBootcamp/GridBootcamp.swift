//
//  GridBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct GridBootcamp: View {
    let columns1: [GridItem] = [
        //.fixed：固定大小
        GridItem(.fixed(50), spacing: nil, alignment: nil),//代表一列
        GridItem(.fixed(150), spacing: nil, alignment: nil),
    ]
    
    let columns2: [GridItem] = [
        //.flexible：灵活的
        //整分屏幕：如果只有一个，则整屏；如果有两个，则半屏；依次类推
        //spacing：左右间距，即列间距
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    let columns3: [GridItem] = [
        //.adaptive：自适应，以最小值为准，尽量多放
        GridItem(.adaptive(minimum: 50, maximum: 120), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 120), spacing: nil, alignment: nil),
    ]
    
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
        ScrollView{
            
            AsyncImage(url: url)
                .frame(width: 300, height: 300)
                .background(.orange)
            
            //LazyVGrid没有滚动属性，需要滚动的话，外面要包一个ScrollView
            LazyVGrid(
                columns: columns1,
                //居中
                alignment: .center,
                //上下间距，即行间距，默认是6
                spacing: 10,
                //.sectionHeaders：头，划过去不消失，还在前面显示
                pinnedViews: [.sectionHeaders],
                
                content: {
                    
                    Section(header:
                                Text("Section 1")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(.blue)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 50)
                                .foregroundColor(.red)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(.blue)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 50)
                                .foregroundColor(.purple)
                        }
                    }
                    
                })
                .background(.gray)
            
            //LazyVGrid没有滚动属性，需要滚动的话，外面要包一个ScrollView
            LazyVGrid(
                columns: columns2,
                //居中
                alignment: .center,
                //上下间距，即行间距，默认是6
                spacing: 10,
                //.sectionHeaders：头，划过去不消失，还在前面显示
                pinnedViews: [.sectionHeaders],
                
                content: {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.yellow)
                    }
                })
                .background(.gray)
            
            
            //LazyVGrid没有滚动属性，需要滚动的话，外面要包一个ScrollView
            LazyVGrid(
                columns: columns3,
                //居中
                alignment: .center,
                //上下间距，即行间距，默认是6
                spacing: 10,
                //.sectionHeaders：头，划过去不消失，还在前面显示
                pinnedViews: [.sectionHeaders],
                
                content: {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.green)
                    }
                })
                .background(.gray)
        }
    }
}

#Preview {
    GridBootcamp()
}
