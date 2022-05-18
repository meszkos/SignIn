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
                    
                GreyTextField(imageName: "person.circle.fill", imageColor: .purple, placeholderText: "Email", isSecureField: false, text: $email)
                GreyTextField(imageName: "lock.fill", imageColor: .purple, placeholderText: "Password", isSecureField: true, text: $password)
                
                Button {
                    //Show recover password form
                } label: {
                    Text("Recover password")
                        .foregroundColor(.gray)
                        
                }
                .padding()
            }
            
            ButtonsView()

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

struct ButtonsView: View {
    
    var body: some View {
        VStack(spacing: 25){
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
            Text("Or continue with")
                .foregroundColor(.gray)
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
            Spacer()
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
        .padding(.top, 30)
    }
}
