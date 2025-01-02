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
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.largeTitle)
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
            Button("Pick a Random Name") {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                } else {
                    pickedName = ""
                }

            }
                        .buttonStyle(.bordered)
                        .foregroundStyle(Color.black)
                            
//                        .background(Color.gray, in: RoundedRectangle(cornerRadius: 7))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
