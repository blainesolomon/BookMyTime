//
//  ClientBookTime.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import SwiftUI

struct ClientBookTime: View {
    let provider: Provider
    let client: Client
    let onFinishBooking: (() -> Void)

    @Environment(DataManager.self) private var dataManager
    @Environment(\.presentationMode) var presentationMode
    @State private var timeSlots = [TimeSlot]()

    var body: some View {
        Form {
            if timeSlots.isEmpty {
                ContentUnavailableView {
                    Label("No current availability", systemImage: "person.badge.clock.fill")
                }
            }

            List {
                ForEach(timeSlots) { slot in
                    Button {
                        bookTimeSlot(timeSlot: slot)
                        onFinishBooking()
                    } label: {
                        Text(slot.startTime.formatted(date: .abbreviated, time: .shortened))
                    }
                }
            }


        }
        .navigationTitle("Book with \(provider.name)")
        .task {
            generateTimeSlots()
        }
    }

    private func bookTimeSlot(timeSlot: TimeSlot) {
        let reservation = Reservation(id: .init(), clientID: client.id, clientName: client.name, providerID: provider.id, providerName: provider.name, isConfirmed: false, creationDate: .now, startDate: timeSlot.startTime)
        dataManager.addReservation(reservation: reservation)
    }

    private func generateTimeSlots() {
        let providerAvailability = dataManager.availability.filter {
            $0.providerID == provider.id
        }

        providerAvailability.forEach {
          let timeSlots = TimeSlot.generateTimeSlots(from: $0.startDate, to: $0.endDate)

            self.timeSlots.append(contentsOf: timeSlots)
        }
    }
}

#Preview {
    NavigationStack {
        ClientBookTime(provider: .alex, client: .frodo) {
            
        }
    }
    .environment(DataManager())
}
