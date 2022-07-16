//
//  BlueSignInView.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

struct BlueSignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            Color.skyBlue
                .ignoresSafeArea()
            VStack{
                astronaut
                signIn
                
                CustomTextField(imageName: "envelope",
                                placeholderText: "Email",
                                isSecureField: false,
                                text: $email)
                    .padding()
                
                CustomTextField(imageName: "lock",
                                placeholderText: "Password",
                                isSecureField: true,
                                text: $password)
                    .padding()
                
                continueButton
                Spacer()
                newUserText
                
            }
            
        }
    }
}

struct BlueSignInView_Previews: PreviewProvider {
    static var previews: some View {
        BlueSignInView()
    }
}

//MARK: - EXTENSION
extension BlueSignInView{
    
    private var astronaut: some View{
        Image("astronaut")
            .resizable()
            .frame(width: 350, height: 350)
    }
    private var signIn: some View{
        HStack{
            Text("Sign In")
                .font(.largeTitle).bold()
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
    }
    
//MARK: - Buttons
    
    private var continueButton: some View{
        NavigationLink {
            //Sign In
        } label: {
            Text("Continue")
                .frame(width: 350, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
        }
    }
    
    private var newUserText: some View{
        HStack{
            Text("New user?")
                .foregroundColor(.white)
            NavigationLink{
                //Take user to SignUp Screen
            }label: {
                Text("Create an account")
                    .foregroundColor(.blue)
            }
        }
    }
    
}
