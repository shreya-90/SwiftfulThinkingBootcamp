//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 01/09/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(colors:  [Color(uiColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)) ], startPoint: .top, endPoint: .bottom)
                )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
