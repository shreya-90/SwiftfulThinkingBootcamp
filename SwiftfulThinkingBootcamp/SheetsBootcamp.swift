//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 09/09/24.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool =  false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(10)
            })
            .sheet(isPresented: $showSheet, content: {
                SecondView()
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondView()
//            })
        }
    }
}

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
           
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondView()
}
