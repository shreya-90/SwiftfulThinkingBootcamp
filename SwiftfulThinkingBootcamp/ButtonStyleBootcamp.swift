//
//  ButtonStyleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 19/09/24.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        
        VStack {
            Button {
                
            } label: {
                Text("Button Style")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)
            
            
            Button("Button styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //        .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            
            
            Button("Button styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //        .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            
            
            Button("Button styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            
            Button("Button styles") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //        .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
        }.padding()
    }
}

#Preview {
    ButtonStyleBootcamp()
}
