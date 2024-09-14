//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 14/09/24.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 25.0)
            RoundedRectangle(cornerRadius: 25.0)
            RoundedRectangle(cornerRadius: 25.0)
        }
        .tabViewStyle(.page)
        
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTabNoThree: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }.tag(0)
//            
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }.tag(1)
//            
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }.tag(2)
//        }.accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTabNoThree: Int
    
    var body: some View {
        
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTabNoThree = 2
                    
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .foregroundColor(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                }

            }
           
            

        }
    }
}
