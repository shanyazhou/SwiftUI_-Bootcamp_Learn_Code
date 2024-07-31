//
//  AlertBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/2.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            Button("Click here"){
                showAlert.toggle()
            }
            
            .alert(isPresented: $showAlert, content: {
    //            Alert(title: Text("There was an error!"))
                
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text("There was an error!"),
                     message: Text("This is a message"),
                     primaryButton: .destructive(Text("red color"), action: {
                       backgroundColor = .red
                     }),
                     secondaryButton: .default(Text("cancel")))
    }
    
}

#Preview {
    AlertBootcamp()
}
