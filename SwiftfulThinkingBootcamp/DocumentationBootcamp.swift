//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 14/09/24.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var data: [String] = [
        "Apples", "Garba", "Bananas"
    ]
    
    /*
     kdmkdm
     kdwqdknq
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     */
    var body: some View {
        
        NavigationView {  //START: NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("Alert",
                                    action: {
                                showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert()
            })
            }  //END: NAV
        }
        
    }
    
    ///this is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { //START: SCROLLV
            
            Text("Hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } //END: SCROLLV
    }
    
    /// Gets an alert
    ///
    ///
    /// This function retunrna simple alert for demo purposes
    ///```
    ///getAlert() -> Alert(title: "Hi")
    ///```
    /// - Warning: Text in alert is hard coded
    /// - Returns: Alert with title
    func getAlert() -> Alert {
        return Alert(title: Text("This is an alert"))
    }
}

#Preview {
    DocumentationBootcamp()
}
