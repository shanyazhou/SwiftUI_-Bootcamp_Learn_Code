//
//  ContentView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/30.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        
        VStack {
            Image("dinner")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("今天吃什么？")
                .font(.largeTitle)//字体大小
                .fontWeight(.semibold)//字体样式
                .bold()//粗体
                .underline(true, color: Color.red)//下划线
                .italic()//斜线
                .strikethrough(true, color: Color.green)//穿过线
                .foregroundStyle(.purple)//颜色
            
            
            //原来那一套，size设置字体大小，weight设置是bold还是什么样式，design设置自己的字体
            Text("告诉我！")
                .font(.system(size: 40, weight: .bold, design: .default))
            
            Text("NSOperation 需要配合 NSOperationQueue 来实现多线程。因为默认情况下，NSOperation 单独使用时系统同步执行操作，配合 NSOperationQueue 我们能更好的实现异步执行。")
                .multilineTextAlignment(.trailing)
                .kerning(1)//左右间距调大
//                .baselineOffset(20)//行间距调大：每一行，下面留20间距
                .baselineOffset(-20)//行间距调大：每一行，上面留20间距
                .frame(width: 200, height: 200, alignment: .center)//frame大小
                .background(.gray)//背景颜色
                
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
