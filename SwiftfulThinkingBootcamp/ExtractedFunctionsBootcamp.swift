//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 06/09/24.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var background: Color = .pink
    
    var body: some View {
        
        ZStack {
            //background
            background.ignoresSafeArea()
            
            //content
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        background = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
