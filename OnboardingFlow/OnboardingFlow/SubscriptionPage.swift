//
//  SubscriptionPage.swift
//  OnboardingFlow
//
//  Created by Jah're Parker on 1/23/24.
//

import SwiftUI

struct SubscriptionPage: View {
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
            .padding(.top, 25)
            
            Spacer()
            
            ZStack {
                VStack(spacing: 15) {
                    Text("Join in on the family fun")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .padding(.top, 25)
                    
                    Spacer()
                    
                    HStack(spacing: 30) {
                        VStack {
                            Text("3 Months")
                                .font(.title2)
                                .fontWeight(.heavy)
                            Text("$0.43/day")
                                .font(.caption)
                            Divider()
                                .frame(width: 100)
                            Text("$39.99")
                            Text("per 3 months")
                                .font(.caption)
                        }
                        .padding(.vertical, 30)
                        .padding(.horizontal, 15)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2))
                        
                        VStack {
                            Text("1 Week")
                                .font(.title2)
                                .fontWeight(.heavy)
                            Text("$1/day")
                                .font(.caption)
                            Divider()
                                .frame(width: 100)
                            Text("$8")
                            Text("per week")
                                .font(.caption)
                        }
                        .padding(.vertical, 30)
                        .padding(.horizontal, 15)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2))
                    }
                    .padding(.bottom, 50)
                    
                    Button {
                        
                    } label: {
                        Text("Continue")
                    }
                    .padding()
                    .frame(width: 300)
                    .foregroundStyle(.white)
                    .background(.accent, in: RoundedRectangle(cornerRadius: 15))
                    
                    
                    Text("Restore Purchases")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)

                    HStack(spacing: 3) {
                        Text("Privacy Policy")
                            .underline()
                        Text("&")
                        Text("Terms of Use")
                            .underline()
                    }
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundStyle(.gray)
                    
                    Spacer()
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 475)
            .background(.gradientMiddle)
            .ignoresSafeArea()
        }
    }
    
}

#Preview {
    SubscriptionPage()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
}
