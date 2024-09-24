//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 21/09/24.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        
        NavigationStack {
            List {
                LazyVStack {
                    
                    ForEach(0..<100) { _ in
                        Rectangle()
                            .frame(height: 300)
                    }
                    
                }
            }.navigationTitle("Safe Area Insets")
                .navigationBarTitleDisplayMode(.inline)
                .safeAreaInset(edge: .top, alignment: .center, spacing: nil) {
                    Text("Hi")
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
