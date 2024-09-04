//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 03/09/24.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .foregroundColor(.white)
                    .font(.title)
            }
            
//            Text("1")
//                .font(.title)
//                .foregroundColor(.white)
//                .background(
//                    Circle()
//                        .frame(width: 100, height: 100)
//                )
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
        
            
    }
}

#Preview {
    StacksBootcamp()
}
