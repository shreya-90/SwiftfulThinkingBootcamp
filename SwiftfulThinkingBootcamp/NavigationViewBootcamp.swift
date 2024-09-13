//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 10/09/24.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                NavigationLink("Hello world!", destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }.navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
                .navigationBarItems(
                    leading: 
                        HStack {
                            Image(systemName: "person.fill")
                            Image(systemName: "flame.fill")
                        },
                       
                    
                    trailing: NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.red)
                )

        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here!", destination: Text("3rd screen"))
            }
            
        }
    }
}


#Preview {
    NavigationViewBootcamp()
}
