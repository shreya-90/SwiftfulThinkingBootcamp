//
//  ExtractSubViewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 06/09/24.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack {
            Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            myItem(title: "Apples", count: 5, color: .red)
            myItem(title: "Oranges", count: 5, color: .orange)
        }
    }
    
}

#Preview {
    ExtractSubViewsBootcamp()
}

struct myItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
