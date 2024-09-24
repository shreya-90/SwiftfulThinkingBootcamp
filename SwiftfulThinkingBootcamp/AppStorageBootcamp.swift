//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 17/09/24.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "no name")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                currentUserName = "Emily"
            }

        }
    }
}

#Preview {
    AppStorageBootcamp()
}
