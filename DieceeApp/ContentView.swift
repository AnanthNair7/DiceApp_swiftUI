//
//  ContentView.swift
//  DieceeApp
//
//  Created by Ananth Nair on 22/09/23.
//

import SwiftUI

struct ContentView: View {
   @State var leftDice = 1
   @State var rightDice = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("diceeLogo")
               Spacer()
                HStack{
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDice = Int.random(in: 1...6)
                    self.rightDice = Int.random(in: 1...6)
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                })
                .background(Color.red)
                Spacer()
                
                
               
            }
        }
    }
}



struct DiceView: View {
    let n : Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
       
}

#Preview {
    ContentView()
}
