//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 20/09/24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField {
        case username
        case password
    }
    
    @State private var username: String = ""
//    @FocusState private var userNameInFocus: Bool
//    
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?

    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($userNameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign up 🚀") {
                let userNameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if userNameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if userNameIsValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
                     
            }
       
        }.padding(40)
    }
}

#Preview {
    FocusStateBootcamp()
}
