//
//  StepperBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/8.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthValue: CGFloat = 0
    
    var body: some View {
        VStack{
            ///步长为1
            Stepper("Stepper:\(stepperValue)", value: $stepperValue)
            
            Rectangle()
                .frame(width: 100 + widthValue, height: 100)
                .cornerRadius(20)
            
            Stepper("Stepper:\(stepperValue)") {
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            }

        }
        .padding()
    }
    
    func incrementWidth(amount: CGFloat){
        withAnimation {
            widthValue += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
