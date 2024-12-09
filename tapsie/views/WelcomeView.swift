//
//  WelcomeView.swift
//  tapsie
//
//  Created by Adam Vandover on 12/7/24.
//
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            VStack {
                Image(uiImage: UIImage(named: "bitcoin-logo.png")!)
                
                Text("tapsie")
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("The bitcoin wallet designed for silent payments.")
                    .font(.system(size: 24))
                    .foregroundStyle(Color.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)) {
                    Text("Create Wallet")
                        .font(.system(size: 24))
                        .frame(maxWidth: .infinity)
                }
                .padding(.all)
                .buttonStyle(.borderedProminent)
                .tint(orange)
            }
            .frame(maxHeight: .infinity, alignment: .center)
            
            VStack {
                Text("Your wallet, your coins")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.secondary)
                    .frame(alignment: .bottom)
                Text("100% open-source & open-design")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.secondary)
                    .padding(.bottom)
            }
            .frame(alignment: .bottom)
        }
    }
}

#Preview {
    WelcomeView()
}
