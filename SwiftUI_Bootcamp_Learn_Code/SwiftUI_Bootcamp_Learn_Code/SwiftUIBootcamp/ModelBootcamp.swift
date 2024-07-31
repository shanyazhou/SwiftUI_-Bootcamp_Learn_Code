//
//  ModelBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/17.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let subName: String
    let isAuthentication: Bool
    let followCount: Int
}

struct ModelBootcamp: View {
    
    var userArray = [
        UserModel(name: "张三", subName: "zhangsan", isAuthentication: true, followCount: 100),
        UserModel(name: "李四", subName: "lisi", isAuthentication: false, followCount: 55),
        UserModel(name: "王五", subName: "wangwu", isAuthentication: false, followCount: 355),
        UserModel(name: "赵六", subName: "zhaoliu", isAuthentication: true, followCount: 88),
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<userArray.count) { index in
                    HStack {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.yellow)
                        
                        VStack{
                            Text(userArray[index].name)
                                .font(.title2)
                            Text("@\(userArray[index].subName)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        if userArray[index].isAuthentication {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(userArray[index].followCount)")
                                .font(.title2)
                            Text("Followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
