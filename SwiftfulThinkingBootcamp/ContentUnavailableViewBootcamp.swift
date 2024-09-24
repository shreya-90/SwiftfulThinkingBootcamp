//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 23/09/24.
//

import SwiftUI
struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        
        
        if #available(iOS 17.0, *) {
//            ContentUnavailableView.search(text: "abc")
            
            ContentUnavailableView("Some View",
                                           systemImage: "heart.fill",
                                           description: Text("This is some text"))

        }
        else {
            //fallback on earlier versions
        }
        
//
        
        
        
        
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
