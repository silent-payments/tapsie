//
//  HomeView.swift
//  tapsie
//
//  Created by Adam Vandover on 12/7/24.
//

import SwiftUI

struct Payments: View {
    var body: some View {
        VStack {
            Text("Payments")
                .font(.largeTitle)
                .foregroundColor(orange)
        }
    }
}

struct Balance: View {
    var body: some View {
        Text("Balance")
            .font(.largeTitle)
            .foregroundColor(orange)
    }
}

struct Settings: View {
    var body: some View {
        Text("Settings")
            .font(.largeTitle)
            .foregroundColor(orange)
    }
}

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        TabView {
            Tab("Payments", systemImage: "arrow.up.arrow.down") {
                Payments()
            }
            Tab("Balance", systemImage: "list.bullet") {
                Balance()
            }
            Tab("Settings", systemImage: "gearshape.fill") {
                Settings()
            }
        }
        .tint(orange)
    }
}

#Preview {
    HomeView()
}
