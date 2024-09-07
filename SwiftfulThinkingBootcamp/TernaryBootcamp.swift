//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 06/09/24.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 100)
        }
        
       Spacer()
            
        
    }
}

#Preview {
    TernaryBootcamp()
}
