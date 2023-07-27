//
//  ContentView.swift
//  War Card Game
//
//  Created by Victor Obioma on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "card7"
    @State var cpuCard:String = "card13"
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        
        ZStack {
            // Display the overall background color of the game
            Image("background-wood-grain").resizable().ignoresSafeArea()
            
            //V-Stack for all the elements
            VStack {
                Spacer() // space
                
                Image("logo") // Paste the logo
                
                Spacer() // space
                
                // H-Stack for the cards
                HStack {
                    Spacer() // space
                    
                    Image(playerCard) // Paste the card
                    
                    Spacer() // space
                    
                    Image(cpuCard) // Paste the card
                    
                    Spacer() // space
                }
                
                Spacer() // space
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer() // space
                
                // H-Stack to handle the UI of the player and CPU
                HStack {
                    
                    Spacer() // space
                    
                    // V-Stack to handle the layout of the player's label and their score
                    VStack
                    {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    
                    Spacer() // space
                    
                    // V-Stack to handle the CPU's label and their score
                    VStack
                    {
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    
                    Spacer() // space
                    
                }.foregroundColor(.white)
                
                Spacer() // this is a space
            }
        } // Finish this Z-Stack with the necessary code within it
    }
    
    func deal() {
        // Randomize the player's card
        let playerValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        
        // Randomize the cpu's card
        let cpuValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuValue)
        
        // Update the score with logic
        if (playerValue > cpuValue) {
            // Add to the player score
            playerScore+=1
        }
        else if (cpuValue > playerValue) {
            // Add to the cpu score
            cpuScore+=1
        }
        // if the cards are equal, do nothing...
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
