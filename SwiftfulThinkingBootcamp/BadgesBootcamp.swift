//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 20/09/24.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello world")
                .badge(10)  //secondary color
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
        }
//        TabView {
//            
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
