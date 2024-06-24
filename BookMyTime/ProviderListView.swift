//
//  ProviderListView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ProviderListView: View {
    @State private var providers = [Provider.alex, .leo, .milo]

    var body: some View {
        NavigationStack {
            List {
                ForEach(providers) {
                    Text($0.name)
                }
            }
            .navigationTitle("Providers")
        }
    }
}

#Preview {
    ProviderListView()
}
