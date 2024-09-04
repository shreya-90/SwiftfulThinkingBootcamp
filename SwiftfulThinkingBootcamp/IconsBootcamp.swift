//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 02/09/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
//            .font(.caption)
            .frame(width: 300, height: 300)
            .foregroundColor(.yellow)
            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
