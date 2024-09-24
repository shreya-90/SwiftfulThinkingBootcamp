//
//  NavigationSplitView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 23/09/24.
//

import SwiftUI


//NavigationSplitView -> MacOS, iPad, VisionOS

struct NavigationSplitView: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .automatic
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: FruitCategory? = nil


    
    var body: some View {
        
//        NavigationSplitView(columnVisibility: $visibility) {
//            Color.red
//        } content: {
//            Color.green
//        } detail: {
//            Color.blue
//        }.navigationViewStyle(.balanced)
        return Color.red

    }
}

#Preview {
    NavigationSplitView()
}

enum FruitCategory {
    case apple
    case banana
    case orange
}

enum FoodCategory: String, CaseIterable {
    case fruit
    case vegetable
    case meats
}
