//
//  ClientDetailView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ClientDetailView: View {
    let client: Client

    @Environment(DataManager.self) private var dataManager

    @State private var reservations = [Reservation]()
    @State private var showingMakeReservation = false

    var body: some View {
        ZStack {
            List {
                Section {
                    ForEach(reservations) { reservation in
                        ReservationRowView(reservation: reservation)
                    }

                    Button("Make Reservation") {
                        showingMakeReservation = true
                    }
                } header: {
                    Text("Reservations")
                } footer: {
                    Text("Tap to confirm a reservation")
                }
            }
        }
        .sheet(isPresented: $showingMakeReservation) {
            ClientMakeReservationView(client: client)
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
