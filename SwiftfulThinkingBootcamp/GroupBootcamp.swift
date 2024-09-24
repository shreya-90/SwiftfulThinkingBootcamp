//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 21/09/24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        
        VStack(spacing: 50) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Group {
                Text("Hello, World!")
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.green)
           
            
        }.foregroundColor(.red)
        
    }
}

#Preview {
    GroupBootcamp()
}
