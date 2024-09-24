//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 20/09/24.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.route) 
            .onSubmit {
                print("Something to the console!")
            }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
