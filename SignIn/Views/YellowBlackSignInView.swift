//
//  YellowBlackSignInView.swift
//  SignIn
//
//  Created by MacOS on 19/05/2022.
//

import SwiftUI

struct YellowBlackSignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            Color.black
            VStack{
                headerView
                
                VStack{
                    GrayTextField(imageName: "envelope"
                                  , imageColor: .yellow,
                                  placeholderText: "Email",
                                  text: $email)
                    
                    GrayTextField(imageName: "lock",
                                  imageColor: .yellow,
                                  placeholderText: "Password",
                                  text: $password)
                    forgotPasswordText
                    signInButton
                }
                .padding()
                Spacer()
                
                signUpText
            }
        }
        .ignoresSafeArea()
    }
}

struct YellowBlackSignInView_Previews: PreviewProvider {
    static var previews: some View {
        YellowBlackSignInView()
    }
}

//MARK: - EXTENSION
extension YellowBlackSignInView{
    
    private var headerView: some View{
        VStack(alignment: .leading){
            HStack{Spacer()}
            
            Text("Hello")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Welcome back")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color.yellow)
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
    
    private var forgotPasswordText: some View{
        HStack{
            Spacer()
            Button{
                // Forgot password action
            }label: {
                Text("Forgot password?")
                    .foregroundColor(.yellow)
            }
            
        }
    }
    
    private var signInButton: some View{
        Button {
            //Sign in
        } label: {
            Text("Sign In")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 340, height: 50)
                .background(Color.yellow)
                .cornerRadius(30)
        }
        .padding(.top, 30)
        .shadow(color: .white.opacity(0.2), radius: 10, x: 0, y: 0)
    }
    
    
    private var signUpText: some View{
        HStack{
            Text("Don't have an account?")
                .foregroundColor(.white)
            NavigationLink{
                // Take user to sign up page
            }label: {
                Text("Sign up")
                    .foregroundColor(.yellow)
                    .bold()
            }
        }
        .padding()
    }
    
}
