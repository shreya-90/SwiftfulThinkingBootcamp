//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 31/08/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
//            //.fill(Color.red)
////            .stroke(Color.blue, lineWidth: 2.0)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            .trim(from: 0.5, to: 1.0)
    }
}

#Preview {
    ShapesBootcamp()
}
