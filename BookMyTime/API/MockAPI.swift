//
//  MockAPI.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import Foundation

@Observable final class MockAPI {

    func fetchClients() -> [Client] {
        return []
    }

    func fetchProviders() -> [Provider] {
        return []
    }

    func fetchSchedule(provider: Provider) -> [TimeSlot] {
        return []
    }

    func fetchReservations(provider: Provider) -> [Reservation] {
        return []
    }

    func fetchReservations(client: Client) -> [Reservation] {
        return []
    }

    func addReservation(reservation: Reservation) {

    }

    func confirmReservation(reservation: Reservation) {

    }

    func addTimeSlot(timeSlot: TimeSlot) {

    }

}

