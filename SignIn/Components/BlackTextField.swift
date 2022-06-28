//
//  BlackTextField.swift
//  SignIn
//
//  Created by MacOS on 28/06/2022.
//

import SwiftUI

struct BlackTextField: View {
    
    var imageName: String
    var imageColor: Color
    var placeholderText: String
    var isSecureField: Bool? = false
    
    @Binding var text: String
    
    var body: some View {
        ZStack{
            Color.black
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .foregroundColor(.white)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                TextField("", text: $text)
                    .placeholder(when: text.isEmpty) {
                            Text(placeholderText).foregroundColor(.white)
                        
                    }
                }
            .padding(.horizontal)
            }
        .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.white, lineWidth: 1)
            )
        .frame(height: 55)
        .cornerRadius(8)
        }
}

struct BlackTextField_Previews: PreviewProvider {
    static var previews: some View {
        BlackTextField(imageName: "envelope",imageColor: .white, placeholderText: "Email", isSecureField: false, text: .constant(""))
    }
}
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
