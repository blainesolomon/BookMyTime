//
//  Availability.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import Foundation
import Observation

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
