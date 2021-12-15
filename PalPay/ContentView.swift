//
//  ContentView.swift
//  PalPay
//
//  Created by Luigi Minniti on 13/12/21.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        TabView {
                   OverView()
                       .tabItem {
                           Label("Overview", image: "Overview")
                       }
            
                   WalletView()
                       .tabItem {
                           Label("Wallet", image: "Wallet")
                       }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
