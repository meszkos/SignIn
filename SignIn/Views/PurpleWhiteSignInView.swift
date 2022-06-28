//
//  PurpleWhiteSignInView.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

struct PurpleWhiteSignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                Text("Login")
                    .font(.largeTitle).bold()
                Text("Welcome back!")
                    .foregroundColor(.gray)
                    .padding(.bottom, 30)
                    
                GrayTextField(imageName: "person.circle.fill", imageColor: .purple, placeholderText: "Email", isSecureField: false, text: $email)
                GrayTextField(imageName: "lock.fill", imageColor: .purple, placeholderText: "Password", isSecureField: true, text: $password)
                
                recoverPassword
            }
            buttonStack

        }
        .padding()
        .padding(.top, 30)
    }
}

struct PurpleWhiteSignInView_Previews: PreviewProvider {
    static var previews: some View {
        PurpleWhiteSignInView()
    }
}

//MARK: - EXTENSION
extension PurpleWhiteSignInView{
    
    private var recoverPassword: some View{
        Button {
            //Show recover password form
        } label: {
            Text("Recover password")
                .foregroundColor(.gray)
                
        }
        .padding()
    }
    
    private var loginButton: some View{
        Button {
            // Log in user
        } label: {
            Text("Login")
                .fontWeight(.bold)
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(25)
                .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
        }
    }
    private var notMember: some View{
        HStack{
            Text("Not a member?")
            NavigationLink {
                //Take user to Signup screen
            } label: {
                Text("Register here")
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
            }
        }
    }
    
//MARK: - Google, Facebook
    
    private var googleLogin: some View{
        Button {
            // Login with Google
        } label: {
            HStack{
                Image("googleIcon")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Continue with Google")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .cornerRadius(25)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
            .background(Color.white)
            .frame(width: 350, height: 50)
            .overlay(
                Capsule(style: .continuous)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
    }
    
    private var fbLogin: some View{
        Button {
            // Login with Faceebok
        } label: {
            HStack{
                Image("fbIcon")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Continue with Facebook")
                
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                    .cornerRadius(25)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
            .background(Color.white)
            .frame(width: 350, height: 50)
            .overlay(
                Capsule(style: .continuous)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
    }

//MARK: - Button stack

    
    private var buttonStack: some View {
        VStack(spacing: 25){
            loginButton
            Text("Or continue with")
                .foregroundColor(.gray)
            googleLogin
            
            fbLogin
            Spacer()
            notMember
        }
        .padding(.top, 30)
    }

}
