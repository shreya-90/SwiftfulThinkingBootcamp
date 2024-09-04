//
//  SwiftUIView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 30/08/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!")
            .font(.body)
            .fontWeight(.medium)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
            .multilineTextAlignment(.center)
//            .baselineOffset(-50)
//            .kerning(10)
            .frame(width: 100, alignment: .leading)
        
        
        
                   
    }
}

#Preview {
    TextBootcamp()
}
