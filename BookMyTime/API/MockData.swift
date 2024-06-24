//
//  MockData.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import Foundation

extension Provider {
    static let milo = Provider(id: .init(), name: "Milo")
    static let leo = Provider(id: .init(), name: "Leo")
    static let alex = Provider(id: .alexID, name: "Alex")
}

extension Client {
    static let frodo = Client(id: .init(), name: "Frodo")
    static let sam = Client(id: .init(), name: "Sam")
    static let gandalf = Client(id: .init(), name: "Gandalf")
}

extension UUID {
    static let alexID = UUID(uuidString: "D5B90964-D7BC-480D-BEAA-7284396B374B")!
}

extension TimeSlot {
    static let july1 = TimeSlot(id: .init(),
                                startDate: .makeDate(month: 7, day: 1, hour: 9),
                                providerID: .alexID)

    static let july2 = TimeSlot(id: .init(),
                                startDate: .makeDate(month: 7, day: 2, hour: 9),
                                providerID: .alexID)
}


extension Date {
    static func makeDate(month: Int, day: Int, hour: Int) -> Date {
        var components = DateComponents()
        components.year = 2024
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = 0
        return Calendar.current.date(from: components)!
    }
}


