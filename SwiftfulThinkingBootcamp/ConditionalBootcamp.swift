//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 06/09/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("isLoading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 50, height: 50)
            }
           
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 50)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 150, height: 100)
            }
            
            Spacer()
         }
    }
}

#Preview {
    ConditionalBootcamp()
}
