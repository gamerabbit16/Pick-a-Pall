//
//  ContentView.swift
//  Pick-a-Pall
//
//  Created by Paul Jorda on 02/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Paul","Luc","Emma","Maria"]
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
