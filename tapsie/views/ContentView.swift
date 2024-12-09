//
//  ContentView.swift
//  tapsie
//
//  Created by Adam Vandover on 12/5/24.
//

import SwiftUI
import SwiftData

let orange = Color(red: 0.969, green: 0.576, blue: 0.102)



struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var onboarded: [Onboarded]

    var body: some View {
        NavigationView {
            WelcomeView()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Onboarded.self, inMemory: true)
}
