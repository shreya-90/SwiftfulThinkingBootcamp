//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 03/09/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
//                .background(Color.yellow)
                .padding(.horizontal)
//                .background(Color.green)
            
            
            Spacer()
        }
        
    }
}

#Preview {
    SpacerBootcamp()
}
