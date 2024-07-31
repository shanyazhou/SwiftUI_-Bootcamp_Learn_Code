//
//  LongPressGestureBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/31.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var completed: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
        VStack{
            //长按简单例子
            Text("Long Press Gesture")
                .foregroundStyle(completed ? .white : .black)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(completed ? Color.blue : Color.gray)
                .padding(.horizontal)
                .cornerRadius(5.0)
                //minimumDuration至少按几秒
                //maximumDistance一直按的地，可滑动距离
                .onLongPressGesture(minimumDuration: 1, maximumDistance: 50) {
                    completed = true
                } onPressingChanged: { value in
                    
                }
            
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(height: 50)
                .frame(maxWidth: completed ? .infinity : 0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .cornerRadius(10.0)
                //这样写无效
                //.frame(width: 10, height: 30)
                //.frame(width: .infinity, height: 30)
                .background(Color.gray)
                .padding()
                
            
            HStack{
                Text("Long Press")
                    .foregroundColor(.white)
                    .frame(width: 120, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding()
                    //minimumDuration至少按几秒
                    //maximumDistance一直按的地，可滑动距离
                    .onLongPressGesture(minimumDuration: 2.0, maximumDistance: 50) {
                        //按压完成之后
                        withAnimation(.easeInOut) {
                            isSuccess = true
                        }
                    } onPressingChanged: { isPressing in
                        if isPressing {//按压 到 按压时间设置(minimumDuration) 的中间状态
                            withAnimation(  .easeInOut(duration: 2.0)){
                                completed = true
                            }
                        }else{//停止按压
                            //0.1秒后，去判断是否完成
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {//没有完成，则回退
                                    withAnimation(.easeInOut) {
                                        completed = false
                                    }
                                }
                            }
                        }
                    }
                
                
                Button("Reset Click"){
                    completed = false
                    isSuccess = false
                }
                .foregroundColor(.white)
                .frame(width: 120, height: 50)
                .background(.blue)
                .cornerRadius(10)
                .padding()
            }
            
        }
        
        

    }
}

#Preview {
    LongPressGestureBootcamp()
}
