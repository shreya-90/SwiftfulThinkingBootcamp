//
//  ViewthatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 23/09/24.
//

import SwiftUI

struct ViewthatFitsBootcamp: View {
    var body: some View {
        
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits(in: .vertical) {
                Text("This is some text i would like to display to the user!")
                Text("This is some text i would like to display")
                Text("This is some text")
                    
            }.lineLimit(1)
            
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewthatFitsBootcamp()
}
