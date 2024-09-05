//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 04/09/24.
//

import SwiftUI

struct GridBootcamp: View {
    var body: some View {
        
        let columns: [GridItem] = [
//            GridItem(.fixed(50), spacing: 10, alignment: nil),
//            GridItem(.fixed(75), spacing: 10, alignment: nil),
//            GridItem(.fixed(100), spacing: 10, alignment: nil),
//            GridItem(.fixed(75), spacing: 10, alignment: nil),
//            GridItem(.fixed(50), spacing: 10, alignment: nil)
            
            GridItem(.flexible(), spacing: 6, alignment: nil),  // column spacing
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil)
            
//            GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//            GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
           
        ]
        
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6, // spacing between rows
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                Section(header: 
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<15) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                    ForEach(0..<15) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                            
                            
                    }
                }
                
            })
            
//            LazyVGrid(columns: columns) {
//                
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                     
//                }
//            
//            })
        }
        
    }
}

#Preview {
    GridBootcamp()
}
