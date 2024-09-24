//
//  AnyLayout.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 23/09/24.
//

import SwiftUI

struct AnyLayout: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    @State private var changeLayout = false

    
    var body: some View {
        Text("Horizontal: \(horizontalSizeClass.debugDescription)")
        Text("Vertical: \(verticalSizeClass.debugDescription)")
        
//        let layout = changeLayout ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
//        
//        layout {
//            Text("Alpha")
//            Text("Beta")
//            Text("Gamma")
//        }
        
        if horizontalSizeClass == .compact {
            VStack {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }  else {
            HStack {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }
    }
}

#Preview {
    AnyLayout()
}
