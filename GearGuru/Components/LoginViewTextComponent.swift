//
//  LoginViewTextComponent.swift
//  GearGuru
//
//  Created by Rachit on 11/05/24.
//

import SwiftUI

struct LoginViewTextComponent: View {
    let title: String
    let placeholder: String
    var isSecure: Bool = false
    @Binding var binding: String
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.title2)
                .foregroundStyle(Color.darkColor)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if(isSecure){
                SecureField(placeholder, text: $binding)
                    .textContentType(.username)
                    .font(.system(size: 14))
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 2)
                    }
            }else{
                TextField(placeholder, text: $binding)
                    .font(.system(size: 14))
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 2)
                    }
            }
        }
    }
}

#Preview {
    LoginViewTextComponent(title: "Email", placeholder: "Enter your Email", binding: .constant(""))
}
