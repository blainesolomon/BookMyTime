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

@Observable final class Availability: Identifiable {
    var id: UUID
    var startDate: Date
    var endDate: Date
    var providerID: UUID

    init(id: UUID = UUID(), startDate: Date, endDate: Date, providerID: UUID) {
        self.id = id
        self.startDate = startDate
        self.endDate = endDate
        self.providerID = providerID
    }
}

extension Availability: Comparable {
    static func < (lhs: Availability, rhs: Availability) -> Bool {
        if lhs.startDate == rhs.startDate {
            return lhs.endDate < rhs.endDate
        }
        return lhs.startDate < rhs.startDate
    }
}

extension Availability: Equatable {
    static func == (lhs: Availability, rhs: Availability) -> Bool {
        lhs.id == rhs.id
    }
}
