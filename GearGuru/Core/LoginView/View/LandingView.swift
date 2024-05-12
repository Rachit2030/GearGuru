//
//  LandingView.swift
//  GearGuru
//
//  Created by Rachit on 12/05/24.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Image("icon_default")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 100)
                    .padding(.vertical)
                
                Text("GearGuru")
                    .font(.system(size: 56,weight: .bold))
                    .foregroundStyle(Color.darkColor)
                
                
                Text("Welcome to The world of Vehicles")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.darkColor)
                
                
                NavigationLink{
                    LoginView()
                        .navigationBarBackButtonHidden()
                }label: {
                    HStack{
                        Text("Log In")
                            .fontWeight(.semibold)
                        
                        Image(systemName: "arrow.right")
                    }.foregroundStyle(Color.lightColor)
                        .frame(width: UIScreen.main.bounds.width - 32,height: 48)
                }
                .background(Color.darkColor)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.top,48)
                
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                }label: {
                    HStack{
                        Text("Sign Up")
                            .fontWeight(.semibold)
                        
                        Image(systemName: "arrow.right")
                    }.foregroundStyle(Color.darkColor)
                        .frame(width: UIScreen.main.bounds.width - 32,height: 48)
                    
                }
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black, lineWidth: 2)
                }
                .padding(.top,12)
                
                Spacer()
                
                NavigationLink{
                    HomeTabView()
                        .navigationBarBackButtonHidden()
                }label: {
                    
                    Text("Continue as a Guest")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.darkColor)
                }
                
                
            }.background(Color.lightColor)
        }
    }
}

#Preview {
    LandingView()
}
