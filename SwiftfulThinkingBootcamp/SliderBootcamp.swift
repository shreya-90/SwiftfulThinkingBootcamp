//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 14/09/24.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            
            Text("Rating:")
            Text(
                String(format: "%.2f", sliderValue)
            ).foregroundColor(color)
            
            
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
            
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(value: $sliderValue, label: {
                Text("Stepper")
            }, minimumValueLabel: {
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
            }, maximumValueLabel: {
                Text("5")
                    
            },
            onEditingChanged: { _ in
                color = .green
            }
            )
            .accentColor(.red)
            .padding(.horizontal)
  
        }
    }
}

#Preview {
    SliderBootcamp()
}
