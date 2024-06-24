//
//  ReservationRowView.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import SwiftUI

struct ReservationRowView: View {
    var reservation: Reservation

    @State private var showingAlert = false
    @Environment(DataManager.self) private var dataManager

    var body: some View {
        Button {
            showingAlert.toggle()
        } label: {
            HStack {
                VStack(alignment: .leading) {
                    Text(reservation.startDate.formatted(date: .long, time: .shortened))
                        .font(.headline)
                    Text("Reservation with \(reservation.providerName)")
                        .font(.subheadline)
                }

                Spacer()

                Group {
                    if reservation.isConfirmed {
                        Image(systemName: "calendar.badge.checkmark")
                    } else {
                        Image(systemName: "exclamationmark.triangle")
                            .tint(.red)
                    }
                }
                .font(.title)
            }
        }
        .alert(reservation.isConfirmed ? "Reservation Confirmed" : "Confirm Reservation?", isPresented: $showingAlert) {

            if reservation.isConfirmed {
                Button("Continue") {

                }
            } else {
                Button("Cancel", role: .cancel) {

                }

                Button("Confirm") {
                    reservation.isConfirmed = true
                    dataManager.confirmReservation(reservation: reservation)
                }
            }
        }
    }
}

#Preview {
    List {
        Section("Reservations") {
            ReservationRowView(reservation: .frodoDemoReservation)
            ReservationRowView(reservation: .frodoConfirmedReservation)

        }
    }
    .environment(DataManager())
}
