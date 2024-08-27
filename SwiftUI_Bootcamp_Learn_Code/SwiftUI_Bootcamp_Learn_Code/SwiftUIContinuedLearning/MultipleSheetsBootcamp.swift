//
//  MultipleSheetsBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/27.
//

import SwiftUI

///使用class创建model
class MultipleSheetClassModel: Identifiable{
    var id = UUID().uuidString
    var title: String = ""
    
    init(id: String = UUID().uuidString, title: String) {
        self.id = id
        self.title = title
    }
}

///使用struct创建model
struct MultipleSheetStructModel: Identifiable{
    var id = UUID().uuidString
    var title: String
}

struct MultipleSheetsBootcamp: View {
    
    @State var randomSheetClassModel: MultipleSheetClassModel = MultipleSheetClassModel(title: "title-class")
    @State var isShowSheet = false
    
    //error method
    var body: some View {
        VStack{
            VStack{
                Button("click me show sheet1") {
                    isShowSheet.toggle()
                    randomSheetClassModel = MultipleSheetClassModel(title: "sheet1")
                }
                
                Button("click me show sheet2") {
                    isShowSheet.toggle()
                    randomSheetClassModel = MultipleSheetClassModel(title: "sheet2")
                }
            }
            .sheet(isPresented: $isShowSheet, content: {
                NextClassSheets(randomSheetClassModel: self.randomSheetClassModel)
            })
        }
        
    }
}

struct MultipleSheetsBootcamp2: View {
    @State var randomSheetStructModel: MultipleSheetStructModel = MultipleSheetStructModel(title: "title-struct")
    
    @State var isShowSheet = false
    
    //error method
    var body: some View {
        VStack{
            VStack{
                Button("click me show sheet3") {
                    isShowSheet.toggle()
                    randomSheetStructModel = MultipleSheetStructModel(title: "sheet3")
                }
                
                Button("click me show sheet4") {
                    isShowSheet.toggle()
                    randomSheetStructModel = MultipleSheetStructModel(title: "sheet4")
                }
            }
            .sheet(isPresented: $isShowSheet, content: {
                NextStructSheets(randomSheetStructModel: self.randomSheetStructModel)
            })
        }
        
    }
}

private struct NextClassSheets: View {
    var randomSheetClassModel: MultipleSheetClassModel
    var body: some View {
        Text("classType：\(randomSheetClassModel.title)")
    }
}

private struct NextStructSheets: View {
    var randomSheetStructModel: MultipleSheetStructModel
    var body: some View {
        Text("structType：\(randomSheetStructModel.title)")
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MultipleSheetsBootcamp()
            MultipleSheetsBootcamp2()
        }
    }
}
