//
//  RegistrationView.swift
//  GearGuru
//
//  Created by Rachit on 11/05/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var fullName: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack{
                Image("icon_default")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 100)
                    .padding(.vertical)
                
             
                VStack(alignment: .leading,spacing:24){
                    LoginViewTextComponent(title: "Email", placeholder: "Enter your email", binding: $email)
                    
                    LoginViewTextComponent(title: "Full Name", placeholder: "Enter your name", binding: $fullName)
                    
                    
                    LoginViewTextComponent(title: "Password", placeholder: "Enter Password", isSecure: true, binding: $password)
                    
                    LoginViewTextComponent(title: "Password", placeholder: "Confirm your Password", isSecure: true, binding: $confirmPassword)
                    
                  
                    
                }.padding()
                
                
                Button{
                    
                }label: {
                    HStack{
                        Text("Sign Up")
                            .fontWeight(.semibold)
                        
                        Image(systemName: "arrow.right")
                    }.foregroundStyle(.white)
                        .frame(width: UIScreen.main.bounds.size.width - 32,height: 48)
                }.background(Color.darkColor)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.top,24)
                
                Spacer()
                Button {
                    dismiss()
                } label: {
                    HStack{
                        Text("Already have an account")
                        Text("Sign In")
                            .underline()
                            .fontWeight(.bold)
                    }.font(.system(size: 14))
                        .foregroundStyle(Color.darkColor)
                }
               
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
