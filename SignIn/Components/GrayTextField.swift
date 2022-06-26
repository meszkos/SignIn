//
//  GrayTextField.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

struct GrayTextField: View {
    
    var imageName: String
    var imageColor: Color
    var placeholderText: String
    var isSecureField: Bool? = false
    
    
    @Binding var text: String
    
    var body: some View {
        ZStack {
            Color.textfieldGrey
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(imageColor)
                
                if isSecureField ?? false{
                    SecureField(placeholderText, text: $text)
                }else{
                    TextField(placeholderText, text: $text)
                }
            }
            .padding()
        }
        .frame(height: 55)
        .cornerRadius(10)
    }
}

struct GreyTextField_Previews: PreviewProvider {
    static var previews: some View {
        GrayTextField(imageName: "person.circle.fill",imageColor: .purple, placeholderText: "Email", isSecureField: false, text: .constant(""))
    }
}
