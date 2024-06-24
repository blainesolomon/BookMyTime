//
//  DataManager.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import Foundation

@Observable final class DataManager {

    private(set) var clients = [Client]()
    private(set) var providers = [Provider]()
    private(set) var reservations = [Reservation]()
    private(set) var timeSlots = [TimeSlot]()

    init() {
        fetchClients()
        fetchProviders()
    }

    func fetchClients() {
        clients = [.frodo, .sam, .gandalf]
    }

    func fetchProviders() {
        providers = [.alex, .leo, .milo]
    }

    func fetchSchedule(provider: Provider) {
        timeSlots = [.july1DemoSlot, .july2DemoSlot]
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

