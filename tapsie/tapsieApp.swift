//
//  tapsieApp.swift
//  tapsie
//
//  Created by Adam Vandover on 12/5/24.
//

import SwiftUI
import SwiftData

@main
struct tapsieApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Onboarded.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
