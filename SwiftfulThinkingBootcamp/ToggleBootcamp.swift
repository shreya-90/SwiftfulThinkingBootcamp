//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 12/09/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = true
    
    var body: some View {
        
        VStack {
            HStack {
                
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                
            }
                Toggle(isOn: $toggleIsOn) {
                    Text("Change Status")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            
            Spacer()
        }.padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
