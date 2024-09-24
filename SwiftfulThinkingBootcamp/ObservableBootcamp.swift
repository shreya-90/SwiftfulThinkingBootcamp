//
//  ObservableBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 24/09/24.
//

import SwiftUI

//Migrated from ObservedObject protocol method to @Observable MACRO method

@Observable class ObservableViewModel {
     var title: String = "Some title"
}

struct ObservableBootcamp: View {
    
    @State var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Button(viewModel.title) {
                viewModel.title = "New Title"
            }
            
            SomeChildView(viewModel: viewModel)
            
            ThirdChildView()
        }.environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "swqiediqndin"
        }
    }
    
}

struct ThirdChildView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View!!!"
        }
    }
    
}

#Preview {
    ObservableBootcamp()
}
