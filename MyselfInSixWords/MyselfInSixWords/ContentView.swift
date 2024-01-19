//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Jah're Parker on 1/14/24.
//

// Use Text views to display six words that describe you. Give each word some padding and a different background color. For an extra challenge, try displaying the words horizontally and vertically by nesting HStack views inside the VStack.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("First 3 words")
            HStack {
                Text("Timid")
                Text("Caring")
                Text("Curious")
            }
            
            Text("Last 3 words")
            HStack {
                Text("Loving")
                Text("Quiet")
                Text("Confused")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
