//
//  ClientListView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ClientListView: View {
    @Environment(DataManager.self) private var dataManager

    var body: some View {
        NavigationStack {
            List {
                ForEach(dataManager.clients) {
                    Text($0.name)
                }
            }
            .navigationTitle("Clients")
        }
    }
}

#Preview {
    ClientListView()
        .environment(DataManager())
}
