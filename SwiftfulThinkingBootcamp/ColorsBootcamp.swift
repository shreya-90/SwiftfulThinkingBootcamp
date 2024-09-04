//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 01/09/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
//                Color(uiColor: UIColor.tertiarySystemFill)
                Color("CustomColor", bundle: nil)
            )
            .frame(width: 300, height: 200)
            .shadow(radius: 10)
    }
}

#Preview {
    ColorsBootcamp()
}
