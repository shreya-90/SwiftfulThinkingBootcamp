//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 02/09/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
            Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors:[Color(uiColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                        )
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color(uiColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                        , alignment: .bottomTrailing)
            )
           
            
         
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
