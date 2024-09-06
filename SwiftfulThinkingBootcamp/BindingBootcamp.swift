//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 06/09/24.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "TITLE"
    
    var body: some View {
        ZStack {
        backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "New TITLE"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingBootcamp()
}
