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
            Text(title) // only string
            
            Button("Press me") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                // can be any View
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                    
                        
            })
            
            Button {
                self.title = "Button #3 was pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .shadow(radius: 10)
                    .frame(width: 75, height: 75)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(
                                .red
                            )
                    }
            }
            
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finish")
                    .foregroundColor(.gray)
                    .font(.caption)
                    .bold()
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                  
            }

            
           
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
