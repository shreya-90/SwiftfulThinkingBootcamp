//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 14/09/24.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                VStack(spacing: 20) {
                    Text("This is Primary color")
                        .foregroundColor(.primary)
                    
                    Text("This is Secondary color")
                        .foregroundColor(.secondary)
                    
                    Text("This is black color")
                        .foregroundColor(.black)
                    
                    Text("This is white color")
                        .foregroundColor(.white)
                    
                    Text("This is red color")
                        .foregroundColor(.red)
                    
                    Text("This is custom color")
                        .foregroundColor(Color("AdaptiveColor")) //Globally adaptive
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)  // Locally adaptive
                }

            }
        }
    }
}

#Preview {
        DarkModeBootcamp()
            .preferredColorScheme(.dark)
}
