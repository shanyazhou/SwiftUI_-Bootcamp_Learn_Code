//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        ContentUnavailableView(
            "暂无网络",
            systemImage: "wifi.slash",
            description: Text("请检查网络，刷新后再试~😄"))
        
        //更简单
        ContentUnavailableView.search
        
        
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
