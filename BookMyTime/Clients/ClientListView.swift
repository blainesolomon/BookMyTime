//
//  ClientListView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ClientListView: View {
    @State private var clients = [Client.frodo, .sam, .gandalf]

    var body: some View {
        NavigationStack {
            List {
                ForEach(clients) {
                    Text($0.name)
                }
            }
            .navigationTitle("Clients")
        }
    }
}

#Preview {
    ClientListView()
}
