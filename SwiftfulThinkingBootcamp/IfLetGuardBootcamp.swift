//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 15/09/24.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "testuser"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
        
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
                
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User is \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no user ID"
        }
        
        
    }
}

#Preview {
    IfLetGuardBootcamp()
}
