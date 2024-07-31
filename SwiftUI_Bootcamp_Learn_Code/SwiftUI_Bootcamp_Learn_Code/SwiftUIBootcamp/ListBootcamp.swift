//
//  ListBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/2.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "banana", "orange", "peach"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section {
                    ///for循环
                    ///id: \.self，以自己为index
                    ForEach(0..<fruits.count, id: \.self){ index in
                        Text(fruits[index])
                            .font(.caption)//设置cell的样式
                            .foregroundStyle(.white)
                            .padding(.vertical)
                    }
                    ///左滑删除
                    .onDelete(perform: { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    })
                    ///section的背景颜色
                    .listRowBackground(Color.blue)
                } header: {
                    HStack{
                        Text("Fruits1")
                        Image(systemName: "flame.fill")
                    }
                    //设置section的样式
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                }
                
                Text("----------")
                
                Section {
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit)
                    }
                    
                    ///没有实现，不能正常保存
                    .onMove(perform: { indices, newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    })
                } header: {
                    Text("Fruits2")
                }
                
            }
            ///样式，类似group\plain
            //.listStyle(.insetGrouped)
            .accentColor(.purple)//没起作用
            .navigationTitle("Navigation Title")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add", action: {
                fruits.append("watermelon")
            }))
        }
        .accentColor(.red)
    }
}

#Preview {
    ListBootcamp()
}
