//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 15/09/24.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText = "Starting Text"
    @State var count: Int = 0
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new Text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending Text!"
            })
            .navigationTitle("onAppear \(count)")
        }
       
        
        
    }
}

#Preview {
    OnAppearBootcamp()
}
