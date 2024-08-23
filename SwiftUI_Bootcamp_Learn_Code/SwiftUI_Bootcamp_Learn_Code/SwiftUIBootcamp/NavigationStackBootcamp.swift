//
//  NavigationStackBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    ///路径数组
    @State private var stackPath: [String] = []
    
    var body: some View {
        
        NavigationStack(path: $stackPath) {
            VStack{
                Button("stackPathButton") {
                    ///一下进去三个view，然后一个一个返回
                    stackPath.append(contentsOf: [
                        "xxx ", "yyy", "zzz"
                    ])
                }
            }
            .navigationTitle("这是一个标题")
            .navigationDestination(for: Int.self) { item in
                MySecondViewScreen(index: item)
            }
            .navigationDestination(for: String.self) { item in
                Text("next view: \(item)")
            }
        }
        
        Divider()
        
        //NavigationView废弃，改用NavigationStack
        NavigationStack() {
            ScrollView{
                VStack(spacing: 40){
        
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0...20, id: \.self) { item in
                        
                        ///使用这种方式，不会将下级view初始化，点击的时候才会创建
                        NavigationLink(value: item) {
                            Text("current view: \(item)")
                        }
                        
                        //使用这种方法，会将所有的下级view初始化
//                        NavigationLink {
//                            MySecondViewScreen(index: item)
//                        } label: {
//                            Text("current view: \(item)")
//                        }
                    }
                }
            }
            .navigationTitle("这是一个标题")
            //可以写多个目的地，根据类型判断进哪一个
            .navigationDestination(for: Int.self) { item in
                MySecondViewScreen(index: item)
            }
            .navigationDestination(for: String.self) { item in
                Text("next view: String - \(item)")
            }
        }
    }
}

struct MySecondViewScreen: View {
    
    var index: Int
    
    init(index: Int) {
        self.index = index
        print("Init Screen: \(index)")
    }
    
    var body: some View {
        Text("next view: Int - \(index)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
