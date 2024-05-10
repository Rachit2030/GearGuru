//
//  GomeTabView.swift
//  GearGuru
//
//  Created by Rachit on 10/05/24.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView{
            CarListingView()
                .tabItem {
                    Image(systemName: "car.fill")
                    Text("Home")
                        .font(.subheadline)
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                        .font(.subheadline)
                }
        }.tint(.darkColor)
    }
}

#Preview {
    HomeTabView()
}
