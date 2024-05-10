//
//  HomeTabView.swift
//  GearGuru
//
//  Created by Rachit on 09/05/24.
//

import SwiftUI

struct CarListingView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                CarCardView(imageString: "mustang_image1", title: "Mustang GT",cardColor: .white,shadowColor: .white,titleColor: .darkColor,height: 200,offset: 40,imageHeight: 220,imageWidth: 300)
                
                CarCardView(imageString: "g63_image1", title: "Mercedes G63",height: 250,offset: 60,imageHeight: 220,imageWidth: 300)
                
                
                
                CarCardView(imageString: "audi", title: "Ferrari 458 Spider",cardColor: .white,shadowColor: .white,titleColor: .darkColor,height: 200,offset: 70,imageHeight: 180,imageWidth: 300)
                
                
                //            Divider()
                //                .padding()
                
                //            DetailCardView(cardColor: .white,shadowColor: .white, height: 200, width: .infinity)
                
            }.background(Color.lightColor.gradient)
        }
    }
}

#Preview {
    CarListingView()
}


struct CarCardView: View {
    let imageString: String
    let title: String
    var cardColor: Color = .darkColor
    var shadowColor: Color = .darkColor
    var titleColor: Color = .lightColor
    let height: Double
    let offset: Double
    let imageHeight: Double
    let imageWidth: Double
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(cardColor)
                .frame(height: height)
                .border(Color.darkColor.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding()
            
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(titleColor)
                .shadow(color:.gray,radius: 1)
                .padding(.top,8)
                .offset(y: -70)
            
            
            Image(imageString)
                .resizable()
                .scaledToFill()
                .frame(width: imageWidth,height: imageHeight)
                .offset(y: offset)
            
        }.padding(.vertical)
    }
}
