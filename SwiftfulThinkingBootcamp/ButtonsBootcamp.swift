//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 05/09/24.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me") {
                self.title = "Button was pressed"
            }
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
