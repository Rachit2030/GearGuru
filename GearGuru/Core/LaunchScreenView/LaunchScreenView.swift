//
//  LaunchScreenView.swift
//  GearGuru
//
//  Created by Rachit on 09/05/24.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct LaunchScreenView: View {
    @EnvironmentObject var viewmodel: LaunchScreenViewModel
    @State private var imageUrl = "launch-lights-off"
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom){
                
                Image(imageUrl)
                    .resizable()
                
                if(!viewmodel.isStartStopClicked){
                    Button{
                        
                        imageUrl = "launch-lights-on"
                        playSound()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                            viewmodel.isStartStopClicked = true
                            viewmodel.animationValue += 1
                        }
                        
                    }
                label:{
                    Text("ENGINE START \nSTOP")
                        .fontWeight(.semibold)
                    
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .frame(width:90,height: 90)
                        .background(Color("start-inner-color").gradient)
                        .clipShape(Circle())
                        .padding(.all, 8)
                        .background(Color("start-outer-color").gradient)
                        .clipShape(Circle())
                        .shadow(color:Color("start-inner-color") ,radius: 10)
                        .padding(.vertical,64)
                }
                }
                
                
                
                
            }.ignoresSafeArea()
            
        }
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "engine", withExtension: "mp3")
        
        guard url != nil else{ return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player.play()
            player.setVolume(0, fadeDuration: 4)
        }catch{
            print("DEBUG: Not Able To Play Engine Sound \(error.localizedDescription)")
        }
    }
}

#Preview {
    LaunchScreenView().environmentObject(LaunchScreenViewModel())
}
