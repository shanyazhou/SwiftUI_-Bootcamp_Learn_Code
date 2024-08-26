//
//  GeometryReaderBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/26.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
    var body: some View {
        VStack(spacing: 0){
            Rectangle()
                .fill(.blue)
                .frame(height: kScreenHeight * 0.3)
            Rectangle()
                .fill(.yellow)
                .frame(height: kScreenHeight * 0.7)
        }
        .ignoresSafeArea()
    }
}

struct GeometryReaderBootcamp2: View {
    var body: some View {
        GeometryReader(content: { geometry in
            VStack(spacing: 0){
                Rectangle()
                    .fill(.blue)
                    .frame(height: geometry.size.height * 0.3)
                Rectangle()
                    .fill(.yellow)
    //                    .frame(height: geometry.size.height * 0.7)
                
                
            }
            .ignoresSafeArea()
        })
    }
}

struct GeometryReaderBootcamp3: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(0..<20) { index in
                    GeometryReader(content: { geometry in
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .rotation3DEffect(
                                    Angle(degrees: getPercentage(geometry: geometry) * 10),
                                    axis: (x: 0.0, y: 1.0, z: 0.0)
                                )
                            Text("\(index)")
                                .font(.largeTitle)
                        }
                    })
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        }
    }
    
    func getPercentage(geometry: GeometryProxy) -> Double {
        //屏幕的一半
        let maxDistance = kScreenWidth / 2
        //获取每个 RoundedRectangle 的中点位置（X轴），相对于整个屏幕坐标系（global）。
        let currentX = geometry.frame(in: .global).midX
        //计算当前视图距离屏幕中心点的相对距离
        //正中间的时候，下面的值正好是：1-1 = 0
        //最左边的时候，下面的值是：1 - 0 = 1
        return Double(1 - (currentX/maxDistance))
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            GeometryReaderBootcamp()
            GeometryReaderBootcamp2()
            GeometryReaderBootcamp3()
        }
    }
}
