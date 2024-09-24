//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 18/09/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
//        AsyncImage(url: url)
        
//        AsyncImage(url: url) { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        } placeholder: {
//            ProgressView()
//        }
        
        AsyncImage(url: url) { phase in
//            if let image = phase.image {
//                    image // Displays the loaded image.
//                } else if phase.error != nil {
//                    Color.red // Indicates an error.
//                } else {
//                    Color.blue // Acts as a placeholder.
//                }
            
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                
            case .failure(let error):
                Image(systemName: "questionmark")
                    .font(.headline)
             default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }

    }
}

#Preview {
    AsyncImageBootcamp()
}
