//
//  NativePopoverBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover1: Bool = false
    @State private var showPopover2: Bool = false
    @State private var showPopover3: Bool = false
    @State private var showPopover4: Bool = false
    @State private var showPopover5: Bool = false
    
    private var array: [String] = [
        "123", "456", "789"
    ]
    
    var body: some View {
        
        ZStack{
            Color.green.ignoresSafeArea()
            
            ZStack{
                VStack(spacing: 50){
                    Button("Click Me .sheet") {
                        showPopover1.toggle()
                    }
                    
                    Button("Click Me .fullScreenCover") {
                        showPopover2.toggle()
                    }
                    
                    
                    Button("Click Me .popover") {
                        showPopover3.toggle()
                    }
                    
                    Button("Click Me .popover") {
                        showPopover4.toggle()
                    }
                    
                    Button("Click Me .popover") {
                        showPopover5.toggle()
                    }
                    .padding(.bottom, -100)
                }
                .background(.red)
                
                
                .popover(isPresented: $showPopover1, content: {
                    Text("Hello Next View")
                        .presentationCompactAdaptation(PresentationAdaptation.sheet)//出现的方式的设置
                })
                
                .popover(isPresented: $showPopover2, content: {
                    Text("Hello Next View")
                        .presentationCompactAdaptation(PresentationAdaptation.fullScreenCover)
                })
                
                
                .popover(isPresented: $showPopover3, content: {
                    Text("Hello Next View")
                        .presentationCompactAdaptation(PresentationAdaptation.popover)
                })
                
                .popover(isPresented: $showPopover4, attachmentAnchor: .point(UnitPoint.center), arrowEdge: .top, content: {
                    
                    ScrollView{
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(0..<array.count) { item in
                                Button(array[item]) {
                                    
                                }
                                .foregroundStyle(.black)
                                
                                if item != array.count - 1{
                                    Divider()
                                }
                            }
                        })
                        .padding(20)
                    }
                    .presentationCompactAdaptation(PresentationAdaptation.popover)
                    
                        
                })
                
                .popover(isPresented: $showPopover5, attachmentAnchor: .point(UnitPoint.bottom), arrowEdge: .top, content: {
                    Text("Hello Next View")
                        .presentationCompactAdaptation(PresentationAdaptation.popover)
                })
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
