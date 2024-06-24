//
//  ProviderListView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ProviderListView: View {
    @Environment(DataManager.self) private var dataManager

    var body: some View {
        NavigationStack {
            List {
                ForEach(dataManager.providers) {
                    Text($0.name)
                }
            }
            .navigationTitle("Providers")
        }
    }
}

#Preview {
    ProviderListView()
        .environment(DataManager())
}
