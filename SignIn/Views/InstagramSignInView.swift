//
//  InstagramSignInView.swift
//  SignIn
//
//  Created by MacOS on 11/06/2022.
//

import SwiftUI

struct InstagramSignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            
            Image("instagram")
                .resizable()
                .frame(width: 250, height: 100)
                .padding(.top, 100)
            userField
            passwordField
            
            HStack{
                Spacer()
                Text("Forgot password?")
                    .font(.footnote)
                    .foregroundColor(.blue)
                 
            }
            .padding(.bottom, 30)
            logInButton
            
            facebook
            LabelledDivider(label: "OR")
            
            signUp
            
            Spacer()
            meta
            
            
        }
        .padding(.horizontal)
    }
}

struct InstagramSignInView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramSignInView()
    }
}

extension InstagramSignInView{
    
    
    var userField: some View{
        ZStack{
            Color.textfieldGrey
            TextField("Phone number, username or email", text: $email)
                .padding(.horizontal)
        }
        .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 1)
            )
        .frame(height: 45)
        .cornerRadius(8)
        
    }
    
    
    var passwordField: some View{
        ZStack{
            Color.textfieldGrey
            SecureField("Password", text: $password)
                .padding(.horizontal)
                
        }
        .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 1)
            )
        .frame(height: 45)
        .cornerRadius(8)
       
    }
    var logInButton: some View{
        Button {
            //Log In user
        } label: {
            Text("Log In")
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .foregroundColor(.white)
                .background(Color.instagramBlue)
                .cornerRadius(8)
        }
    }
    
    var facebook: some View{
        HStack{
            Image("fbIcon")
                .resizable()
                .frame(width: 20, height: 20)
            
            Button {
                //Continue with Facebook
            } label: {
                Text("Continue with Facebook")
                    .foregroundColor(.blue)
                    .bold()
            }
        }
        .padding(.vertical, 30)
    }
    var signUp: some View{
        HStack{
            Text("Don't have an account?")
                .foregroundColor(.gray)
            Button {
                //Sign Up
            } label: {
                Text("Sing Up")
                    .foregroundColor(.blue)
            }
        }
    }
    var meta: some View{
        VStack{
            Text("from")
                .foregroundColor(.gray)
            Image("meta")
                .resizable()
                .frame(width: 160, height: 60)
        }
    }
    
}
