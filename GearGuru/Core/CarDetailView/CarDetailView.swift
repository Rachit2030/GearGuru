//
//  CarDetailView.swift
//  GearGuru
//
//  Created by Rachit on 12/05/24.
//

import SwiftUI

struct CarDetailView: View {
    var body: some View {
        ScrollView {
            VStack{
                Spacer()
                Rectangle()
                    .frame(height: 500)
                
                Text("Detail Screen")
                
                
            }
            
            
            
            
        } .overlay(alignment: .bottom) {
            HStack{
                Image(systemName: "magnifyingglass")
                Text("Ask AI")
                    .font(.footnote)
                
            }.frame(width: 80)
                .padding()
            
                .background(Color.darkColor)
                .foregroundStyle(Color.lightColor)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    CarDetailView()
}
