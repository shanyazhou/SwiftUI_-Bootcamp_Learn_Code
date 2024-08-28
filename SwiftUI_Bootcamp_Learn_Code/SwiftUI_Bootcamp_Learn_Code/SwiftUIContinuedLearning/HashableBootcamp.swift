//
//  HashableBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/28.
//

import SwiftUI

struct MyIdentifiableCustomModel: Identifiable
{
    let id = UUID().uuidString
    let title: String
}

struct MyHashableCustomModel: Hashable
{
    let title: String
    
    func hash(into hasher: inout Hasher) {
        ///将哪个属性变为唯一值
        hasher.combine(title)
    }
}


struct HashableBootcamp: View {
    
    let array1 = [
        MyIdentifiableCustomModel(title: "1"),
        MyIdentifiableCustomModel(title: "2"),
        MyIdentifiableCustomModel(title: "3"),
        MyIdentifiableCustomModel(title: "4"),
        MyIdentifiableCustomModel(title: "5")
    ]
    
    let array2 = [
        MyHashableCustomModel(title: "6"),
        MyHashableCustomModel(title: "7"),
        MyHashableCustomModel(title: "8"),
        MyHashableCustomModel(title: "9"),
        MyHashableCustomModel(title: "10")
    ]
    
    var body: some View {
        ScrollView {
            ForEach(array1) { item in
                Text(item.title)
                    .font(.largeTitle)
            }
            
            Divider()
            
            ForEach(array2, id: \.self) { item in
                Text(item.title)
                    .font(.largeTitle)
            }
        }
        
        
    }
}

#Preview {
    HashableBootcamp()
}
