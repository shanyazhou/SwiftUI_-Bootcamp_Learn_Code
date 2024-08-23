//
//  PickerBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/8.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection1: String = ""
    @State var selection2: String = ""
    @State var selection3: String = ""
    
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Linked"
    ]
    
    //只对segment样式的picker起作用
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attrubutes: [NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attrubutes, for: .selected)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Text("pick1选中的是：" + selection1)
                Picker(selection: $selection1) {
                    ForEach(18...100, id: \.self) { item in
                        //tag不能少，因为text只是显示，tag才是给上面selection使用的
                        Text("\(item)").tag("\(item)~~~")
                    }
                } label: {
                    Text("Picker")
                }
                //样式
                .pickerStyle(.wheel)
                
                //分割线
                Divider()
                
                Text("pick2选中的是：" + selection2)
                Picker(selection: $selection2) {
                    ForEach(filterOptions, id: \.self) { item in
                        HStack{
                            Text("\(item)")
                            Image(systemName: "heart")
                        }
                        .tag(item)
                    }
                } label: {
                    Text("Picker2")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .backgroundStyle(Color.blue)
                }
                .pickerStyle(.menu)
                
                Spacer()
                //分割线
                Divider()
                Spacer()
                
                Text("pick3选中的是：" + selection3)
                Picker(selection: $selection3) {
                    ForEach(filterOptions, id: \.self) { item in
                        //tag不能少，因为text只是显示，tag才是给上面selection使用的
                        Text("\(item)").tag(item)
                    }
                } label: {
                    Text("Picker3")
                }
                .pickerStyle(.segmented)
                
                
                Spacer()

            }
            .navigationTitle("导航栏")
        }
        
        
    }
}

#Preview {
    PickerBootcamp()
}
