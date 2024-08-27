//
//  MultipleSheetsCorrec2Bootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/27.
//

import SwiftUI

///方法二：使用multibleSheet
struct MultipleSheetsCorrect2Bootcamp: View {
    @State var randomSheetStructModel: MultipleSheetStructModel = MultipleSheetStructModel(title: "title-struct")
    
    @State var isShowSheet = false
    @State var isShowSheet2 = false
    var body: some View {
        VStack{
            VStack{
                Button("click me show sheet1") {
                    isShowSheet.toggle()
                }
                .sheet(isPresented: $isShowSheet, content: {
                    NextStructSheets(randomSheetStructModel: MultipleSheetStructModel(title: "sheet1"))
                })
                
                
                Button("click me show sheet2") {
                    isShowSheet2.toggle()
                }
                .sheet(isPresented: $isShowSheet2, content: {
                    NextStructSheets(randomSheetStructModel: MultipleSheetStructModel(title: "sheet2"))
                })
            }       
        }
    }
}

private struct NextStructSheets: View {
    var randomSheetStructModel: MultipleSheetStructModel
    var body: some View {
        Text("structType：\(randomSheetStructModel.title)")
    }
}

struct MultipleSheetsCorrect2Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MultipleSheetsCorrect2Bootcamp()
        }
    }
}
