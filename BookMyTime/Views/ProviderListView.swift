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
                ForEach(dataManager.providers) { provider in
                    NavigationLink {
                        ProviderScheduleView(provider: provider)
                    } label: {
                        Text(provider.name)
                    }

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
