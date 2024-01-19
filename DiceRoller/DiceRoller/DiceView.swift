//
//  DiceView.swift
//  DiceRoller
//
//  Created by Jah're Parker on 1/17/24.
//

import SwiftUI

struct DiceView: View {
   @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Button() {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            } label: {
                Image(systemName: "die.face.\(numberOfPips).fill")
                                .resizable()
                                .frame(maxWidth: 100, maxHeight: 100)
                                .aspectRatio(1, contentMode: .fit)
                                .foregroundStyle(.black, .white)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .accessibilityLabel(Text("Roll Dice"))
            }
        }
    }
}

#Preview {
    DiceView()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.appBackground)
}
