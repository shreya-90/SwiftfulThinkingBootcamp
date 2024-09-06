//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 05/09/24.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack {
                    Button("Button 1") {
                       backgroundColor = .red
                       myTitle = "Button 1 was pressed"
                       count += 1
                        
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }.foregroundColor(.white)
        }
        
        
    }
}

#Preview {
    StateBootcamp()
}
