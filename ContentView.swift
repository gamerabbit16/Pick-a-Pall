//
//  ContentView.swift
//  Pick-a-Pall
//
//  Created by Paul Jorda on 02/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Paul","Luc","Emma","Maria"]
    @State private var nametoAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    var body: some View {
        VStack {
            VStack(spacing: 8){
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick A Pal")
            }
            .font(.title)
            .bold()
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.largeTitle)
                .bold()
                .padding()
            TextField("Add Name", text: $nametoAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nametoAdd.isEmpty {
                        names.append(nametoAdd)
                        nametoAdd = ""
                    }
                }
            Divider()
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            Button("Pick a Random Name") {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    
                    if shouldRemovePickedName {
                        names.removeAll { name in
                            return (name == randomName)
                        }
                    }
                } else {
                    pickedName = ""
                }

            }
                        .buttonStyle(.bordered)
                        .foregroundStyle(Color.black)
                        .padding()
                            
//                        .background(Color.gray, in: RoundedRectangle(cornerRadius: 7))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
