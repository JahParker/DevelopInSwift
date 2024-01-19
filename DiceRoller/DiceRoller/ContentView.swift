//
//  ContentView.swift
//  DiceRoller
//
//  Created by Jah're Parker on 1/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            Text("Click to dice to roll")
                .font(.subheadline)
                .foregroundStyle(.white)
                .padding(.bottom)
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) {_ in
                    DiceView()
                        .foregroundStyle(.white)
                }
            }
            
            HStack(spacing: 30) {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
