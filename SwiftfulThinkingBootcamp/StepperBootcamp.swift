//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 14/09/24.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100, alignment: .center)
            
            Stepper("Stepper 2") {
                //increment
                incrementWidth(amount: 100)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -100)
            }

        }
        
        
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
