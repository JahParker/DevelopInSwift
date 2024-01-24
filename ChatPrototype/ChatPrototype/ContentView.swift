//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Jah're Parker on 1/14/24.
//

// - Add more messages to the conversation. Check
// - Tinker with the color schemes of your message bubbles and their text, using code completion to explore all the built-in named Colors. Check
// - Add shadows to the bubbles using the .shadow modifier. Check
// - Modify the VStack by adding an argument to change the default spacing between its elements, like this: VStack(spacing: 5). Check

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Spacer()
                Text("My name is Jah're Parker")
                    .padding()
                    .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 2)
                    .foregroundStyle(.white)
            }

            HStack {
                Text("Hi, Jah're! Nice to meet you")
                    .padding()
                    .background(Color.gray, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 2)
                .foregroundStyle(.white)
                Spacer()
            }

            HStack {
                Text("Are you having a good day?")
                    .padding()
                    .background(Color.gray, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 2)
                .foregroundStyle(.white)
                Spacer()
            }
            
            HStack {
                Spacer()
                Text("Yes! I am currently having a great day actually")
                    .padding()
                    .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 2)
                .foregroundStyle(.white)
            }


            HStack {
                Text("Glad to hear it :). Me too")
                    .padding()
                    .background(Color.gray, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 2)
                .foregroundStyle(.white)
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

