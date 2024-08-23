//
//  MagnificationGestureBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/31.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    
    @State private var currentScale: CGFloat = 0.0
    //由于放大完后，再次放大会从原始位置开始
    //记录最后的缩放大小，然后在第二次缩放的时候，可以从当前时刻的大小去放大或缩小
    @State private var lastScale: CGFloat = 0.0
    
    @State private var imageCurrentScale: CGFloat = 0.0
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("两手指放大缩小我")
                .frame(width: 200, height: 80)
                .background(.red)
                .cornerRadius(4.0)
                .scaleEffect(1 + currentScale + lastScale)
//                .scaleEffect(CGSize(width: 1.0, height: 1.0))
                //添加缩放手势
                .gesture(
                    MagnificationGesture()
                        .onChanged({ value in
                            //value就是上面.scaleEffect填写的值
                            //其值是1 + xxx
                            //所以value也是 1 + xxx
                            //此处不能写成currentScale = value
                            //这样的话，currentScale = 1+xxx，传到上面直接成了 1 + (1 + xxx—)瞬间扩大了1倍
                            //所以，此处需要写：currentScale = value - 1
                            currentScale = value - 1
                            print("value1-\(value)")
                            print("currentScale-\(currentScale)")
                        })
                    
                        .onEnded({ value in
                            print("value2-\(value)")
                            lastScale += currentScale
                            print("lastScale-\(lastScale)")
                            //lastScale = value - 1
                            //结束了，则当前就是0，last就是最后的scale
                            currentScale = 0.0
                        })
                )
            
            Spacer()
            
            VStack(spacing: 10){
                HStack {
                    Circle()
                        .frame(width: 35, height: 35)
                    Text("名字")
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .padding(.horizontal, 10)
                
                Image("dinner")
                    .resizable()
                    .frame(maxWidth: 380, maxHeight: 380).cornerRadius(5.0)
                    .scaleEffect(1 + imageCurrentScale)
                    .gesture(
                        //非MagnifyGesture()
                        MagnificationGesture()
                            .onChanged({ value in
                                imageCurrentScale = value - 1
                            })
                        
                            .onEnded({ value in
                                withAnimation(.spring) {
                                    imageCurrentScale = 0
                                }
                            })
                    )
                
                HStack {
                    Image(systemName: "heart.fill")
                    Image(systemName: "text.bubble.fill")
                    Spacer()
                }
                .padding(.horizontal, 10)
                
                Text("这是内容内容")
//                        .frame(maxWidth: .infinity)
//                        .frame(alignment: .leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                
            }
            Spacer()
        }
    }
}

#Preview {
    MagnificationGestureBootcamp()
}
