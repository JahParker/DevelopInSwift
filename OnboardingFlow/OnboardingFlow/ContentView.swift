//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Jah're Parker on 1/16/24.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientMiddle,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.black)
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
