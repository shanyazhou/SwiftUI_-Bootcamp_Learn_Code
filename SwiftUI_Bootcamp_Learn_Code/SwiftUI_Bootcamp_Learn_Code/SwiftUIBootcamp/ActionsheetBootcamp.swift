//
//  ActionsheetBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/3.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var isPresented: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("userNane")
                Spacer()
                Button(action: {
                    ///这里可以修改
                    actionSheetOption = .isMyPost
                    isPresented.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }
            Rectangle()
                .frame(width: 370, height: 300)
                .cornerRadius(10)
                .foregroundStyle(Color.random)
        }
        .padding(10)
        
        .actionSheet(isPresented: $isPresented, content: {
            
            let button1: ActionSheet.Button = .cancel(Text("取消"))
            let button2: ActionSheet.Button = .destructive(Text("删除"))
            let button3: ActionSheet.Button = .default(Text("默认"))
            
            
            var otherButtonsArray = [button1]
            var myButtonsArray = [button1, button2, button3]
            
            return ActionSheet(title: Text("标题"),
                        message: Text("消息"),
                               buttons: actionSheetOption == .isMyPost ? myButtonsArray : otherButtonsArray
            )
        })
    }
}

#Preview {
    ActionsheetBootcamp()
}
