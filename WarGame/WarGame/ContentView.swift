//
//  ContentView.swift
//  WarGame
//
//  Created by Ben on 27/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "back"
    @State var CpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Image(playerCard).padding()
                    Image(CpuCard).padding()
                }
                Spacer()
                
                Button {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the card
                    playerCard = "card" + String(playerRand)
                    CpuCard = "card" + String(cpuRand)
                    
                    //Updating the score
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    
                    
                } label: {
                    Image("dealbutton")
                }

                
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white).padding(.bottom)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white).padding(.bottom)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }

