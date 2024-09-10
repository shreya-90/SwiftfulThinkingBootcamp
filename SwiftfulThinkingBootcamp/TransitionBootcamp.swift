//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 09/09/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                    
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion:.move(edge: .leading),
                        removal: .move(edge: .bottom)
                    ))
//                    .opacity(showView ? 2.0 : 0.0)
//                    .animation(.easeInOut, value: showView)
            }

            
        }.ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
           // VStack {
                TransitionBootcamp()
           // }
               
            
        }
    }
