//
//  CustomTextField.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

struct CustomTextField: View {
    
    var imageName: String
    var placeholderText: String
    var isSecureField: Bool? = false
    
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecureField ?? false{
                    SecureField(placeholderText, text: $text)
                }else{
                    TextField(placeholderText, text: $text)
                }
                
                
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: .constant(""))
    }
}
