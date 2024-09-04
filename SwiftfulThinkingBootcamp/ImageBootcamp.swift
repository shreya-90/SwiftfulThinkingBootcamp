//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 02/09/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
       Image("sample")
            .renderingMode(.template)
            .resizable()
            .foregroundColor(.blue)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(30)
            .clipShape(Circle())
            

    }
}

#Preview {
    ImageBootcamp()
}
