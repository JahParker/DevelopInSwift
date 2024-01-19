//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Jah're Parker on 1/16/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                // Shapes don't have an ideal size
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.tint)
                .frame(width: 200, height: 200)
                .shadow(radius: 10, x: 5, y: 5)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 75)) // or .largeTitle
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
                .padding(.top)
            
            Text("This app is for the \"Develop in Swift\" tutorial created by Apple to help developers become better versed with Swift")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
}
