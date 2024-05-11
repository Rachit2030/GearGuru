//
//  LoginView.swift
//  GearGuru
//
//  Created by Rachit on 11/05/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            VStack{
                Image("icon_default")
                    .resizable()
                    .scaledToFit()
                
             
                VStack(alignment: .leading,spacing:12){
                    LoginViewTextComponent(title: "Email", placeholder: "Enter your email", binding: $email)
                    
                    
                    LoginViewTextComponent(title: "Password", placeholder: "Enter Password", isSecure: true, binding: $password)
                    
                  
                    
                }.padding()
                
                Button{
                    
                }label: {
                    HStack{
                        Text("Log In")
                            .fontWeight(.semibold)
                        
                        Image(systemName: "arrow.right")
                    }.foregroundStyle(.white)
                        .frame(width: UIScreen.main.bounds.size.width - 32,height: 48)
                }.background(Color.darkColor)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.top,24)
                
                Spacer()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack{
                        Text("Don't have an account")
                        Text("Sign Up")
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
    LoginView()
}


