//
//  UberSignInView.swift
//  SignIn
//
//  Created by MacOS on 26/06/2022.
//

import SwiftUI

struct UberSignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack{
            Image("NYC")
                .resizable()
            Color.black
                .opacity(0.5)
            VStack{
                uberLogo
                uber
                
                GrayTextField(imageName: "person",
                              imageColor: .black,
                              placeholderText: "Email",
                              isSecureField: false,
                              text: $email)
                GrayTextField(imageName: "lock",
                              imageColor: .black,
                              placeholderText: "Password",
                              isSecureField: true,
                              text: $password)
                signInButton
                forgotPasswordText
                socialStack

            }
            .padding()
        }
        .ignoresSafeArea(edges: [.top, .bottom])
    }
}

struct UberSignInView_Previews: PreviewProvider {
    static var previews: some View {
        UberSignInView()
    }
}

//MARK: - EXTENSION
extension UberSignInView{
    
//MARK: - Header
    
    private var uberLogo: some View{
        Image("uber")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.white)
    }
    private var uber: some View{
        Text("U B E R")
            .foregroundColor(.white)
            .bold()
            .font(.system(size: 70))
            .offset(y: -30)
            .padding(.bottom, 40)
    }

//MARK: - Buttons
    
    private  var signInButton: some View{
        Button {
            //Log in screen
        } label: {
            Text("Sign In")
                .foregroundColor(.white)
                .frame(height: 40)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .cornerRadius(8)
                .padding(.top, 20)
        }
    }
    private var forgotPasswordText: some View{
        NavigationLink {
            //Forgot password
        } label: {
            Text("Forgot password?")
                .foregroundColor(.white)
        }
    }
    
    private var socialStack: some View{
        HStack(spacing: 20){
            Button {
                //Sign in with FB
            } label: {
                Image("fbIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Button {
                //Sign in with google
            } label: {
                Image("googleIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .padding(.vertical, 30)
    }
    
}
