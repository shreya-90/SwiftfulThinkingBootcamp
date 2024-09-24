//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 20/09/24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    @State private var stackPath: [String] = []
    
    var fruits: [String] = ["Apple", "Banana", "Orange"]
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super Segue!") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Water melon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click Me \(x)")
                        }
//                        NavigationLink(destination: {
//                            MySecondScreen(value: x)
//                            
//                        }, label: {
//                            Text("Click Me \(x)")
//                        })
                    }
                    
                }
            }.navigationTitle("Nav Bootcamp")
                .navigationDestination(for: Int.self) { value in
                    MySecondScreen(value: value)  // next screen for any Int
                }
                .navigationDestination(for: String.self) { value in
                    Text("Another Screen \(value)") // next screen for any string
                }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init screen: \(value)")
    }

    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
