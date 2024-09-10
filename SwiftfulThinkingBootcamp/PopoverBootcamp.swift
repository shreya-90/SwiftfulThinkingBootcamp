//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 10/09/24.
//

import SwiftUI


//sheets
//animations
//transitions

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }.font(.largeTitle)
                
                Spacer()
            }
            
            //Method 1 - Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            //Method 2 - Transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen( showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
            
            //Method 3 - Animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(Animation.spring)
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .padding(20)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
            })
        }
    }
}


#Preview {
    PopoverBootcamp()
    
}
