//
//  ClientMakeReservationView.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import SwiftUI

struct ClientMakeReservationView: View {
    let client: Client

    @Environment(\.dismiss) private var dismiss
    @Environment(DataManager.self) private var dataManager

    var body: some View {
        NavigationStack {
            Form {
                List {
                    ForEach(dataManager.providers) { provider in
                        NavigationLink {
                            ClientBookTime(provider: provider, client: client) {
                                dismiss()
                            }
                        } label: {
                            Text(provider.name)
                        }
                    }
                }

            }
            .navigationTitle("Make Reservation")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", role: .cancel) {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    ClientMakeReservationView(client: .frodo)
        .environment(DataManager())
}
