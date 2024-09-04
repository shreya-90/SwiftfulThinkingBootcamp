//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 04/09/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
                
            }

        }
    }
}

#Preview {
    ForEachBootcamp()
}
