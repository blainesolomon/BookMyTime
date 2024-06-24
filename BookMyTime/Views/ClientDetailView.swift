//
//  ClientDetailView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ClientDetailView: View {
    var client: Client

    @Environment(DataManager.self) private var dataManager

    @State private var reservations = [Reservation]()

    var body: some View {
        ZStack {
            List {
                Section("Reservations") {
                    ForEach(reservations) { reservation in
                        VStack {
                            Text(reservation.startDate.formatted(date: .long, time: .shortened))
                            Text("Reservation with \(reservation.providerName)")
                        }
                    }

                }
            }
        }
        .navigationTitle(client.name)
        .onChange(of: dataManager.reservations, initial: true) {
            reservations = dataManager.reservations.filter {
                $0.clientID == client.id
            }
        }
    }
}

#Preview {
    NavigationStack {
        ClientDetailView(client: .frodo)
            .environment(DataManager())
    }
}
