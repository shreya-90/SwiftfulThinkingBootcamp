//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 11/09/24.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = .yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""

    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    
                    alertType = .success
//                    alertTitle = "Successfully Uploaded Video"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }.alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
            
        case .success:
            return Alert(
                title: Text("This was a success!"),
                message: nil,
                dismissButton: .default(Text("OK"),
                action: {
                    backgroundColor = .green
                }))
        default:
            return Alert(title: Text("ERROR"))
            
        }
//        return Alert(title: Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .default(Text("OK"))
//        )
    }
}

#Preview {
    AlertBootcamp()
}
