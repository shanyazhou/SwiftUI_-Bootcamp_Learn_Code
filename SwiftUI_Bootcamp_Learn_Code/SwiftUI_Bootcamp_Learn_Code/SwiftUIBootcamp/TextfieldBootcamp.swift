//
//  TextfieldBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/5.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textFieldString: String = ""
    @State var stringArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                TextField("请输入文字", text: $textFieldString)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .foregroundStyle(.red)
                    .cornerRadius(5.0)
                    .font(.headline)
                
                Button("Save".uppercased()) {
                    if isRight() {
                        saveText()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(isRight() ? .blue : .gray.opacity(0.6))
                .foregroundStyle(.white)
                .cornerRadius(5.0)
                .disabled(!isRight())
                
                ///由于是绑定了stringArray，
                ///stringArray.append(textFieldString)的时候，stringArray值发生改变，此时，调用这个方法
                ForEach(stringArray, id:\.self) { item in
                    Text(item)
                }
                
                //这块有点不好理解的地方
                //比如我先输入123，点击save，则有一个Text(123)
                //再输入456，点击save，此时，for循环变量，拿出数组的值，而数组有两个元素["123", "456"]
                //应该输出两个Text，即Text(123),Text(456)，加上之前的Text(123)，此时有：Text(123),Text(123),Text(456)
                //而实际上，只有Text(123),Text(456)
                
                //这是因为：swiftUI的视图是声明式的，在状态改变的时候，重新渲染视图，渲染的内容只有新的部分，即Text(456)
                
                
                Spacer()
            }
            .padding()
            .navigationTitle("标题")
        }
    }
    
    func saveText(){
        stringArray.append(textFieldString)
        textFieldString = ""
    }
    
    func isRight() -> Bool{
        if textFieldString.count >= 3 {
            return true
        }
        return false
    }
}

#Preview {
    TextfieldBootcamp()
}
