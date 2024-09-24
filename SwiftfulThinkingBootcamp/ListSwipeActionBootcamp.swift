//
//  ListSwipeActionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 19/09/24.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    @State var isExpanded: Bool = true
    @State var fruits: [String] = [
       "apple", "banana", "peach"
    ]
   
    
    var body: some View {
        
        List {
            ForEach(fruits, id: \.self) {
                Text($0.uppercased())
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }.tint(.green)
                        Button("Save") {
                            
                        }.tint(.blue)
                        Button("Junk") {
                            
                        }.tint(.black)
                    }.swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }.tint(.yellow)
                    }
            }
            .onDelete(perform: delete)
        }
            
        
    }
    
    func delete(indexSet: IndexSet) {
        
    }
   
    
}

#Preview {
    ListSwipeActionBootcamp()
}
