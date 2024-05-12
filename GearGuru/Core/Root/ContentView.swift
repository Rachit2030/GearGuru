//
//  ContentView.swift
//  GearGuru
//
//  Created by Rachit on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewmodel: LaunchScreenViewModel
    var body: some View {
        LandingView()
//        Group{
//            
//            if(viewmodel.isStartStopClicked){
//               
//            }else{
//                LaunchScreenView()
//            }
//        }
    }
}

#Preview {
    ContentView().environmentObject(LaunchScreenViewModel())
}

extension Animation{
    static func snappy(duration: Double) -> Animation{
        return Animation.interpolatingSpring(stiffness: 4, damping: 0.7)
            .speed(2)
    }
}
