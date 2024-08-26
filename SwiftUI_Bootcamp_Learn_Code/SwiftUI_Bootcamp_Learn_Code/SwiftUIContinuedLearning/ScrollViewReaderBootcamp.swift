//
//  ScrollViewReaderBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/8/26.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    @State var proxy2: ScrollViewProxy?
    
    @State var textString: String
    
    var body: some View {
        VStack{
            TextField("input number index", text: $textString){}
                .frame(height: 50)
                .border(Color.gray)
                .cornerRadius(5.0)
                .padding()
                .keyboardType(.numberPad)
            
            ScrollView {
                ScrollViewReader(content: { proxy in
                    ForEach(0..<50) { index in
                        Text("This is item #\(index)")
                            .font(.title)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(10)
                            .padding()
                            .shadow(radius: 10)
                            .id(index)//加上id
                    }
                    .onChange(of: textString) { oldValue, newValue in
                        proxy.scrollTo(Int(newValue), anchor: .center)
                    }
                })
            }
        }
    }
}

struct ScrollViewReaderBootcamp2: View {
    
    @State var proxy2: ScrollViewProxy?
    
    @State var textString: String
    
    var body: some View {
        VStack{
            TextField("input number index", text: $textString){}
                .frame(height: 50)
                .border(Color.gray)
                .cornerRadius(5.0)
                .padding()
                .keyboardType(.numberPad)
            
            Button("Select " + textString + " Click Me") {
                if let proxy = proxy2 {
                    withAnimation(.spring){
                        proxy.scrollTo(Int(textString), anchor: .center)
                    }
                }
            }
            
            
            ScrollView {
                ScrollViewReader(content: { proxy in
                    ForEach(0..<50) { index in
                        Text("This is item #\(index)")
                            .font(.title)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(10)
                            .padding()
                            .shadow(radius: 10)
                            .id(index)//加上id
                    }
                    .onAppear(perform: {
                        self.proxy2 = proxy
                    })
                })
            }
        }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ScrollViewReaderBootcamp( textString: "2")
            ScrollViewReaderBootcamp2( textString: "2")
        }
    }
} 
