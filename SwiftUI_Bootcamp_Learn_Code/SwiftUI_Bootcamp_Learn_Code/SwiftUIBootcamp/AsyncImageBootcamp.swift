//
//  AsyncImageBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        VStack{
            AsyncImage(url: url)
                .frame(width: 100, height: 100)
                
            Spacer()
            AsyncImage(url: url) { Image in
                Image
            } placeholder: {
                ProgressView()
            }
            Spacer()
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
