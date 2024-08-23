//
//  AppStorageBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    //方法一：使用UserDefaults.standard
    @State var currentUserName: String?
    
    //方法二：使用AppStorage
    @AppStorage("age") var currentUserAge: Int?
    
    var body: some View {
        Text(currentUserName ?? "Add Name Here")
        
        if let name = currentUserName{
            Text(name)
        }
        
        Button("Save".uppercased()){
            let name: String = "Nick"
            currentUserName = name
            currentUserAge = 100
            //使用方法一，存name
            UserDefaults.standard.setValue(name, forKey: "name")
        }
        
        .onAppear(){
            currentUserName = UserDefaults.standard.value(forKey: "name") as? String
        }
        //使用方法二存age
        if let age = currentUserAge {
            Text("age = \(String(describing: age))")
        }
        
        
    }
}

#Preview {
    AppStorageBootcamp()
}
