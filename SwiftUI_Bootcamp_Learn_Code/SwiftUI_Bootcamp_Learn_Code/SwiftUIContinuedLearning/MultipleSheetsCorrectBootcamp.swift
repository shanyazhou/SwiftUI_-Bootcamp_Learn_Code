//
//  MultipleSheetsCorrectBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/27.
//

import SwiftUI

///方法一：使用 @Binding

struct MultipleSheetsCorrectBootcamp: View {
    @State var randomSheetStructModel: MultipleSheetStructModel = MultipleSheetStructModel(title: "title-struct")
    
    @State var isShowSheet = false
    
    var body: some View {
        VStack{
            VStack{
                Button("click me show sheet1") {
                    isShowSheet.toggle()
                    randomSheetStructModel = MultipleSheetStructModel(title: "sheet1")
                }
                
                Button("click me show sheet2") {
                    isShowSheet.toggle()
                    randomSheetStructModel = MultipleSheetStructModel(title: "sheet2")
                }
            }
            
            .sheet(isPresented: $isShowSheet, content: {
                NextStructSheets(randomSheetStructModel: $randomSheetStructModel)
            })
        }
        
    }
}

private struct NextStructSheets: View {
    @Binding var randomSheetStructModel: MultipleSheetStructModel
    var body: some View {
        Text("structType：\(randomSheetStructModel.title)")
    }
}

struct MultipleSheetsCorrectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MultipleSheetsCorrectBootcamp()
        }
    }
}
