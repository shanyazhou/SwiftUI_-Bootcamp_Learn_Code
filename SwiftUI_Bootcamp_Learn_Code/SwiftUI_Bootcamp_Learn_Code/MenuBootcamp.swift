//
//  MenuBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/28.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Menu("Click Me") {
                Button("1"){
                    
                }
                
                Button("2"){
                    
                }
                
                Button("3"){
                    
                }
                
                Button("4"){
                    
                }
            }
            
            Menu("Click Me") {
                
                ControlGroup("group"){
                    Button("1"){
                        
                    }
                    
                    Button("2"){
                        
                    }
                    
                    Button("3"){
                        
                    }
                }
                
                
                Button("4"){
                    
                }
                
                Menu("Click Me") {
                    
                    ControlGroup("group2"){
                        Button("1"){
                            
                        }
                        
                        Button("2"){
                            
                        }
                        
                        Button("3"){
                            
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    MenuBootcamp()
}
