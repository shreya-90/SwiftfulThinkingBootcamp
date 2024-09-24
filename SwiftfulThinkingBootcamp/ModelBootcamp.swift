//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 16/09/24.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    var displayname: String
    var userName: String
    var followers: Int
    var isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Emily", "Samantha", "Chris"
        UserModel(displayname: "Nick", userName: "nick123", followers: 22, isVerified: true),
        UserModel(displayname: "Emily", userName: "emily1995", followers: 100, isVerified: false),
        UserModel(displayname: "Samantha", userName: "itssam21", followers: 88, isVerified: false),
        UserModel(displayname: "Chris", userName: "chris2009", followers: 400, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayname)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            VStack {
                                Text("\(user.followers)")
                                    .font(.headline)
                                
                                Text("Followers")
                                    .foregroundColor(.gray)
                                .font(.caption)
                            }
                            
                        }
                    }.padding(.vertical, 10)
                    
                    
                }
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
