//
//  ToolBarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 20/09/24.
//

import SwiftUI

struct ToolBarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Hey..", text: $text)
                    
                    Text("Hi 😌")
                        .foregroundColor(.white)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                    }
                }
  
            }
            .navigationTitle("ToolBar")
//            .navigationBarItems(
//            leading: Image(systemName: "heart.fill"),
//            trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarLeading) {
                        Image(systemName: "heart.fill")
                    }
                
                ToolbarItem(
                    placement: .navigationBarTrailing) {
                        Image(systemName: "gear")
                    }
                
//                ToolbarItem(
//                    placement: .navigationBarTrailing) {
//                        Image(systemName: "house.fill")
//                    }
            }
//            .toolbar(.hidden, for: .navigationBar)
//                .toolbarColorScheme(.dark, for: .navigationBar)
//                    .toolbarBackground(.hidden, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }.navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolBarBootcamp()
}
