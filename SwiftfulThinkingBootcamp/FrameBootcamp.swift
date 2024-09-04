//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 02/09/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .frame(height: 100, alignment: .top)
            .background(Color.red)
            .frame(width: 150)
            .background(Color.orange)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
