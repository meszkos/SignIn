//
//  StravaSignInView.swift
//  SignIn
//
//  Created by MacOS on 28/06/2022.
//

import SwiftUI

struct StravaSignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack{
            backGround
            Color.black.opacity(0.5)
                .ignoresSafeArea()
            VStack(spacing: 20){
                stravaImage
                Spacer()
                fbButton
                googleButton
                or
                    
                BlackTextField(imageName: "envelope.fill", imageColor: .black, placeholderText: "Email", isSecureField: false, text: $email)
                    .opacity(0.7)
                BlackTextField(imageName: "lock.fill", imageColor: .black, placeholderText: "Password", isSecureField: true, text: $email)
                    .opacity(0.7)
                
                logInButton
                forgotPassword
            }
            .padding()
        }
    }
}

struct StravaSignInView_Previews: PreviewProvider {
    static var previews: some View {
        StravaSignInView()
    }
}

//MARK: - EXTENSION
extension StravaSignInView{
   
//MARK: - Images
    private var backGround: some View{
        Image("stravaBackground")
            .resizable()
            .ignoresSafeArea()
    }
    
    private var stravaImage: some View{
        Image("strava")
            .resizable()
            .frame(width: 220, height: 45)
            .padding(.top, 20)
    }
    
//MARK: - Buttons
    
    private var fbButton: some View{
        ZStack{
            Button {
                //Continue with FB
            } label: {
                Text("Continue with Facebook")
                    .foregroundColor(.white).bold()
                    
            }
            HStack{
                Image("fbIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                Spacer()
            }
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(8)
    }
    private var googleButton: some View{
        ZStack{
            Button {
                //Continue with Google
            } label: {
                Text("Continue with Google")
                    .foregroundColor(.black).bold()
                    
            }
            HStack{
                Image("googleIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                Spacer()
            }
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(8)
    }
    
    private var or: some View{
        Text("or")
            .foregroundColor(.white)
            .font(.system(size: 40)).bold()
            .padding(.vertical, 25)
    }
        
    
    private var logInButton: some View{
        Button {
            //Log in
        } label: {
            Text("Log In")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .bold()
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.stravaOrange)
        .cornerRadius(8)
    }
    
    private var forgotPassword: some View{
        Button {
            //Forgot password action
        } label: {
            Text("Forgot password?")
                .foregroundColor(.white)
                .font(.system(size: 15))
        }
    }
}
