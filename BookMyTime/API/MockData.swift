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
    static let frodo = Client(id: .frodoID, name: "Frodo")
    static let sam = Client(id: .init(), name: "Sam")
    static let gandalf = Client(id: .init(), name: "Gandalf")
}

extension UUID {
    static let alexID = UUID(uuidString: "D5B90964-D7BC-480D-BEAA-7284396B374B")!
    static let frodoID = UUID(uuidString: "2EA11893-44A8-4670-94FA-FA8BDBDDBD2C")!

}

extension Availability {
    static let alexJuly1Demo = Availability(id: .init(),
                                            startDate: .makeDate(month: 7, day: 1, hour: 8),
                                            endDate: .makeDate(month: 7, day: 1, hour: 15),
                                            providerID: .alexID)

    static let alexJuly2Demo = Availability(id: .init(),
                                            startDate: .makeDate(month: 7, day: 2, hour: 9),
                                            endDate: .makeDate(month: 7, day: 2, hour: 16),
                                            providerID: .alexID)
}

extension Reservation {
    static let frodoDemoReservation = Reservation(id: .init(),
                                                  clientID: .frodoID,
                                                  clientName: "Frodo",
                                                  providerID: .alexID,
                                                  providerName: "Alex",
                                                  isConfirmed: false,
                                                  creationDate: .now,
                                                  startDate: .makeDate(month: 7, day: 1, hour: 9))

    static let frodoConfirmedReservation = Reservation(id: .init(),
                                                       clientID: .frodoID,
                                                       clientName: "Frodo",
                                                       providerID: .alexID,
                                                       providerName: "Alex",
                                                       isConfirmed: true,
                                                       creationDate: .now,
                                                       startDate: .makeDate(month: 7, day: 1, hour: 9))
}





