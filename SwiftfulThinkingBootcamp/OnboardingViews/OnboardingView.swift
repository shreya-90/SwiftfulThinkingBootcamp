//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 18/09/24.
//

import SwiftUI

struct OnboardingView: View {
    
    /*
     0 = Welcome
     1 = name
     2 = age
     3 = Gender
     */
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .leading),
        removal: .move(edge: .trailing))
    
    
    //Onboaring inputs
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    
    //for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //App storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false


    
    var body: some View {
        
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.green)
                }
            }
            
            //buttons
            
            VStack {
                Spacer()
                bottomButton
               
                
            }.padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}


//MARK: - Components
extension OnboardingView {
    
    private var bottomButton: some View {
        
        Text( onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3 ? "FINISH" : "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed()
                
        }
    }
    
    private var welcomeSection: some View {
        
        VStack(spacing: 40) {
            
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay (
                Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            
            Text("This is the #1 app to finding your match online! In this tutorial we are practicing using app storage and other swiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
                
            Spacer()
            Spacer()
                    
                }.padding(30)
            .multilineTextAlignment(.center)
 
        }
    
    private var addNameSection: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
           
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                
            TextField("Add you name...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(20)
                     
            Spacer()
            Spacer()
                    
                }.padding(30)
        
    }
    
    
    private var addAgeSection: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
           
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
 
            Spacer()
            Spacer()
                    
                }.padding(30)
        
    }
    
    
    private var addGenderSection: some View {
        
        VStack(spacing: 30) {
            
            Spacer()
           
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        
                Picker(selection: $gender) {
                        Text("Male").tag("Male")
                        Text("Female").tag("Female")
                        Text("Non-Binary").tag("Non-Binary")
                            
                    
                    } label: {
                        Text(gender.count > 1 ? gender : "Select a gender")
                            .font(.headline)
                            .foregroundColor(.purple)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                        
                    }.padding(.top, 20)
                    .pickerStyle(.automatic)
            
            Spacer()
            Spacer()
                    
        }
        .padding(30)
        
    }
    
}
    

// MARK: Functions
extension OnboardingView {
    
    
    func handleNextButtonPressed() {
        
        //check inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else  {
                showAlert(title: "You name must be atelast three characters long! 😌")
                return
            }
            
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward 🙂")
                return
            }
        default:
            break
        }
        
        //Go to next section
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring) {
                onboardingState += 1
            }
        }
        
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        
        withAnimation(.bouncy) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
