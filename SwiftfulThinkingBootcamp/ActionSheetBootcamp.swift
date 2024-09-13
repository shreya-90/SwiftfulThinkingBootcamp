//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 11/09/24.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.black)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }.actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //add code to report post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //add code to delete post
        }
        
        let cancelButton: ActionSheet.Button =
            .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title,
                               message: nil,
                               buttons: [
                                shareButton, reportButton, cancelButton, deleteButton])
        case .isOtherPost:
            return ActionSheet(title: title,
                               message: nil,
                               buttons: [
                                shareButton, reportButton, cancelButton])
        }
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        
//        return ActionSheet(title: Text("This is the title!"),
//                           message: Text("This is the message!"),
//                           buttons: [button1,button1,button1,button1,button2, button3])
        
        
    }
}

#Preview {
    ActionSheetBootcamp()
}
