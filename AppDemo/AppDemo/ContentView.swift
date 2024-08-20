//
//  ContentView.swift
//  AppDemo
//
//  Created by AKASH S CHERIAN on 04/08/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var playerCard = "card7"
    @State var cpucard =  "card13"
    
    @State var playerScore = 0
    @State var cpuscore = 0
    
    var body: some View {
         
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
            
                Button {
                    deal()
                } label: {
                  Image("button")
                }


            
                Spacer()
                
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)

                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                
                Spacer()
            }
            
        }
    }
    
    func deal() {
        // Randomize the players card
        let playercardvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playercardvalue)
       //Randomize the cpus car
        let cpucardvalue = Int.random(in: 2...14)
        cpucard = "card" + String(cpucardvalue)
      //Update the scores
        if playercardvalue > cpucardvalue {
            playerScore += 1
        }
        else if cpucardvalue > playercardvalue{
            cpuscore += 1
        }
        
        
    }
}


#Preview {
    ContentView()
}
