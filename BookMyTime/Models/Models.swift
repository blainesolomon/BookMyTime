//
//  Models.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import Foundation
import Observation

@Observable final class Client: Identifiable {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}

@Observable final class Provider: Identifiable {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}

@Observable final class Reservation: Identifiable {
    var id: UUID
    var clientID: UUID
    var providerID: UUID
    var isConfirmed: Bool
    var creationDate: Bool
    var startDate: Date
    var endDate: Date

    init(id: UUID, clientID: UUID, providerID: UUID, isConfirmed: Bool, creationDate: Bool, startDate: Date, endDate: Date) {
        self.id = id
        self.clientID = clientID
        self.providerID = providerID
        self.isConfirmed = isConfirmed
        self.creationDate = creationDate
        self.startDate = startDate
        self.endDate = endDate
    }
}

@Observable final class TimeSlot: Identifiable {
    var id: UUID
    var startDate: Date
    var endDate: Date
    var providerID: UUID

    init(id: UUID, startDate: Date, providerID: UUID) {
        self.id = id
        self.startDate = startDate
        self.endDate = startDate.addingTimeInterval(.fifteenMin)
        self.providerID = providerID
    }
}
