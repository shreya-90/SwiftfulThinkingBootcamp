//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 11/09/24.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("You can type here ...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        save()
                    }
                   
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background( textIsAppropriate() ? Color.blue : Color.gray )
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }.disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
                
            }.padding()
                .navigationTitle("TextField Bootcamp!")
            
        }

    }
    
    func save() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
}

#Preview {
    TextFieldBootcamp()
}
