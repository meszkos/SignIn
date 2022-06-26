//
//  RedishSignInView.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

struct PastelBlueSignInView: View {
    
    @State private var phoneNumber = ""
    @State var shadowanim  = false
    @State var rotateanim  = false
    
    var body: some View {
        VStack{
            Text("Login")
                .font(.largeTitle).bold()
                .foregroundColor(.creamRed)
            
            Image("calendarImage")
                .resizable()
                .frame(width: 350, height: 250)
                .padding(.bottom, 30)
                
                .rotationEffect(.degrees(rotateanim ? 0 : -10))
                        .onAppear() {
                            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                                                {
                                                    rotateanim.toggle()
                                                }
                        }
            
            
            GrayTextField(imageName: "phone", imageColor: Color.creamRed, placeholderText: "Phone number", isSecureField: false, text: $phoneNumber)
                .keyboardType(.numberPad)
                .padding(.bottom, 20)
            
           ButtonsStackView()
                

            Spacer()
            SignUpTextView()
        }
        .padding()
    }
}

struct PastelBlueSignInView_Previews: PreviewProvider {
    static var previews: some View {
        PastelBlueSignInView()
    }
}

struct SocialButtonsRowView: View {
    var body: some View {
        HStack(spacing: 30){
            Button {
                //Sign in with Facebook
            } label: {
                Image("fbIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
            Button {
                //Sign in with Google
            } label: {
                Image("googleIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
            Button {
                //Sign in with Twitter
            } label: {
                Image("twitterIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
        }
    }
}

struct SignUpTextView: View {
    var body: some View {
        HStack{
            Text("Don't have an account?")
            NavigationLink{
                // Take user to SignUp View
            }label: {
                Text("Sign up")
                    .foregroundColor(.pastelBlue)
                    .fontWeight(.bold)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
        }
    }
}

struct ButtonsStackView: View {
    var body: some View {
        VStack(spacing: 30){
            
            
            Button {
                //Sign in user
            } label: {
                Text("Login")
                    .fontWeight(.bold)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.pastelBlue)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
            Text("Or Login with")
            SocialButtonsRowView()
        }
    }
}
