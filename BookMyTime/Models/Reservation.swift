//
//  Reservation.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import Foundation
import Observation

@Observable final class Reservation: Identifiable {
    var id: UUID
    var clientID: UUID
    var clientName: String
    var providerID: UUID
    var providerName: String
    var isConfirmed: Bool
    var creationDate: Date
    var startDate: Date
    var endDate: Date

    init(id: UUID, clientID: UUID, clientName: String, providerID: UUID, providerName: String, isConfirmed: Bool, creationDate: Date, startDate: Date) {
        self.id = id
        self.clientID = clientID
        self.clientName = clientName
        self.providerID = providerID
        self.providerName = providerName
        self.isConfirmed = isConfirmed
        self.creationDate = creationDate
        self.startDate = startDate
        self.endDate = startDate.addingTimeInterval(.fifteenMin)
    }
}

extension Reservation: Equatable {
    static func == (lhs: Reservation, rhs: Reservation) -> Bool {
        lhs.id == rhs.id
    }
}
