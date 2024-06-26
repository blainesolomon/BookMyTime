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
    private(set) var availability = [Availability]()

    init() {
        fetchClients()
        fetchProviders()
        fetchAvailability()
        fetchReservations()
    }

    func fetchClients() {
        clients = [.frodo, .sam, .gandalf]
    }

    func fetchProviders() {
        providers = [.alex, .leo, .milo]
    }

    func fetchAvailability() {
        availability = [.alexJuly1Demo, .alexJuly2Demo].sorted()
    }

    func fetchReservations() {
        reservations = [.frodoDemoReservation]
    }

    func addReservation(reservation: Reservation) {
        reservations.append(reservation)
    }

    func confirmReservation(reservation: Reservation) {
        if let index = reservations.firstIndex(where: { $0.id == reservation.id }) {
            reservations[index].isConfirmed = true
        }
    }

    func addAvailability(availability: Availability) {
        self.availability.append(availability)
        self.availability.sort()
    }

}

