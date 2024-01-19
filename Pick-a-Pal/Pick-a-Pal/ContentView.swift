//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by Jah're Parker on 1/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = []
    @State private var nameToAdd = "" // No need to annotate if default value is set in place
    @State private var pickedName = ""
    @State private var shouldRemovedPickedName = false
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
            
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List {
                ForEach(names, id: \.self) { name in
                Text(name)}
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if (!nameToAdd.isEmpty) {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            
            Toggle("Remove picked names", isOn: $shouldRemovedPickedName)
            
            Button() {
                if names.count > 0 {
                    pickedName = names.randomElement()!
                    if shouldRemovedPickedName {
                        names.removeAll { name in
                            name == pickedName
                        }
                    }
                } else {
                    pickedName = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
