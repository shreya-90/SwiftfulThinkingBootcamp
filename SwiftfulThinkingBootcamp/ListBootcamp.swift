//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 10/09/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var isExpanded: Bool = true
    @State var isVeggiesExpanded: Bool = true
    
     @State var fruits: [String] = [
        "apple", "banana", "peach"
     ]
    
    @State var veggies: [String]  = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(
                    isExpanded: $isExpanded
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.uppercased())
                            .font(.caption)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                    
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }.font(.headline)
                        .foregroundColor(.purple)
                    
                    
                }
                
                Section(isExpanded: $isVeggiesExpanded) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                        Text("Veggies")
                }

            }.accentColor(.purple)
//            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }.accentColor(.red)
        
        
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)

    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

#Preview {
    ListBootcamp()
}
