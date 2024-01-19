//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by Jah're Parker on 1/16/24.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            Text(description)
            
            Spacer() // This is similar to having an fixed element with a flex item that fills up the rest of the available space
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .shadow(radius: 5, x: 5, y: 5)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        )
        .foregroundStyle(.white)
        .padding(.horizontal)

        
        // Original Solution
//        HStack {
//            Image(systemName: "quote.bubble.fill")
//                .font(.largeTitle)
//                .padding(.trailing)
//            
//            Text("Short Summary")
//        }
//        .padding()
//        .frame(width: 350, height: 100, alignment: .leading)            .background(.blue, in: RoundedRectangle(cornerRadius: 10))
//        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(
        iconName: "person.2.crop.square.stack.fill",
        description: "A multiline description about a feature paired with the image on the left."
    )
}
