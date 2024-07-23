//
//  ListSwipeActionsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "orange", "peach"
    ]
    
    var body: some View {
        VStack{
            List{
                
                ForEach(fruits, id: \.self) { item in
                    Text(item)
                        ///allowsFullSwipe：true允许拉很长然后触发按钮
                        .swipeActions(edge: .trailing, allowsFullSwipe: true){
                            Button("Archive"){
                                print("Archive")
                            }
                            .tint(.green)
                            
                            Button("Save"){
                                print("Save")
                            }
                            .tint(.blue)
                            
                            Button("Junk"){
                                print("Junk")
                            }
                            .tint(.black)
                        }
                    
                        .swipeActions(edge: .leading, allowsFullSwipe: true){
                            Button("Share"){
                                print("Share")
                            }
                            .tint(.yellow)
                        }
                    
                }
            }
            
        }
        
        Spacer()
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
