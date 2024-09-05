//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 05/09/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                        
                }
            }
                
        }.background(Color.red)
        
        
        
        
        
        
        
        
        
        
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Spacer()
//                
//        }.frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.red)
        
        
            
    }
}

#Preview {
    SafeAreaBootcamp()
}
