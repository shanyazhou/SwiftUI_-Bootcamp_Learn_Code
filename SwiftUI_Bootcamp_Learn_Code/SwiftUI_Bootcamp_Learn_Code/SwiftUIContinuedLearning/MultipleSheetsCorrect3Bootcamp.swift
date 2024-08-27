//
//  MultipleSheetsCorrect3Bootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/27.
//

import SwiftUI

///方法三：使用sheet的item
struct MultipleSheetsCorrect3Bootcamp: View {
    @State var randomSheetStructModel: MultipleSheetStructModel?
    @State var isShowSheet = false
    
    var body: some View {
        VStack{
            VStack{
                ScrollView {
                    ForEach(0..<50) { index in
                        Button("click me show sheet\(index)") {
                            isShowSheet.toggle()
                            randomSheetStructModel = MultipleSheetStructModel(title: "sheet\(index)")
                        }
                        .padding()
                    }
                }
            }
            .sheet(item: $randomSheetStructModel, content: { item in
                NextStructSheets(randomSheetStructModel:item)
            })
        }
    }
}

private struct NextStructSheets: View {
    var randomSheetStructModel: MultipleSheetStructModel
    var body: some View {
        Text("structType：\(randomSheetStructModel.title)")
    }
}

struct MultipleSheetsCorrect3Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MultipleSheetsCorrect3Bootcamp()
        }
    }
}
