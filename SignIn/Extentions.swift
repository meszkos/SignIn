//
//  Extentions.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

extension Color{
    static let skyBlue = Color("skyBlue")
    static let textfieldGrey = Color("textfieldGrey")
    static let creamRed = Color("creamRed")
    static let pastelBlue = Color("pastelBlue")
    static let creamGreen = Color("creamGreen")
    
}

struct RoundedShape: Shape{
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        
        return Path(path.cgPath)
    }
}
