//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 07/09/24.
//

import SwiftUI

@available(*, introduced: 13.0, deprecated: 15.0, message: "Use withAnimation or animation(_:value:) instead.")

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(Animation.default
                    .repeatForever(autoreverses: true))
               
            Spacer()
        }
        
        
    }
}

#Preview {
    AnimationBootcamp()
}
