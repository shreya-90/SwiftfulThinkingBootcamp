//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 21/09/24.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State var showSheet: Bool = false
    @State var detents: PresentationDetent = .large
    
    var body: some View {
        
        Button("Click me!") {
            showSheet.toggle()
        }.sheet(isPresented: $showSheet, content: {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .medium, .large])
//                .presentationDetents([.height(500)])
                .presentationDetents([.medium, .large, .fraction(0.2), .height(600)], selection: $detents)


                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        })
        
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    var body: some View {
        
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Medium") {
                    detents = .medium
                }
                
                Button("Large") {
                    detents = .large
                }
                
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("600px") {
                    detents = .height(600)
                }
            }
            
        }
        
    }
}

#Preview {
    ResizableSheetBootcamp()
}
