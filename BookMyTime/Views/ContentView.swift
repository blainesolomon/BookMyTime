//
//  ContentView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProviderListView()
                .tabItem {
                    Label("Providers", systemImage: "person.3.sequence.fill")
                }

            ClientListView()
                .tabItem {
                    Label("Clients", systemImage: "figure.climbing")
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(DataManager())

}
