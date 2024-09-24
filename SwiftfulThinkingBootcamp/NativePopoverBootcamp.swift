//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 22/09/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var  showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good", "Average", "Very bad",
    ]

    var body: some View {
        
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Button("Provide Feedback?") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .cornerRadius(10)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        }.presentationCompactAdaptation(.popover)
                            .padding()
                    }
                })
                
               
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
