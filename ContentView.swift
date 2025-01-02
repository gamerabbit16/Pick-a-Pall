//
//  ContentView.swift
//  Pick-a-Pall
//
//  Created by Paul Jorda on 02/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                Text("Paul")
                Text("Luc")
                Text("Emma")
                Text("Maria")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
