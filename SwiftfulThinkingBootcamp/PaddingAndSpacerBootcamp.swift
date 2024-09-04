//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 03/09/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        Text("Hello, World! djwiibqfbdfyewh")
            .background(Color.yellow)
            .padding(.all, 10)
            .padding(.leading, 20)
            .background(Color.blue)
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            
            Text("This is a description of what we will do on screen and it will be multiple lines and we will align the text to the leading edge")
                
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0,
                    y: 10)
        )
        .padding(.horizontal, 10)

    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
