//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 12/09/24.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        //overrides ALL segment controls in the app.
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
            
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
        
        
    }
    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Picker")
        }.pickerStyle(.segmented)
//            .background(Color.red)

        
//        VStack {
//            HStack {
//                Text("Filter:")
//                Text(selection)
//            }.font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(.blue)
//                .cornerRadius(10)
//                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//       
//        
//            Picker("", selection: $selection) {
//            ForEach(filterOptions, id: \.self) { option in
//                HStack {
//                    Text(option)
//                    Image(systemName: "heart.fill")
//                    .tag(option)
//                }
//                
//            }
//        }
//        .pickerStyle(.menu)
//    }
        

        
//        VStack {
//            
//            HStack {
//                Text("Age: ")
//                Text(selection)
//            }
//            
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .tag("\(number)")
//                        .foregroundColor(.red)
//                        .font(.headline)
//                }
//                
//                } label: {
//                        Text("Picker")
//                }.pickerStyle(.wheel)
//               
//        }
            
        
       
        

    }
}

#Preview {
    PickerBootcamp()
}
