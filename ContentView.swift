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
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            TextField("Add Name", text: $nametoAdd)
                .onSubmit {
                    names.append(nametoAdd)
                    nametoAdd = ""
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
