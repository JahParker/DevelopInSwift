//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Jah're Parker on 1/16/24.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(
                iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description about a feature paired with the image on the left"
            )
            
            FeatureCard(
                iconName: "quote.bubble.fill",
                description: "Short Summary"
            )
            
            Spacer()
        }
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
