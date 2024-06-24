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
    static let alex = Provider(id: .init(), name: "Alex")
}

extension Client {
    static let frodo = Client(id: .init(), name: "Frodo")
    static let sam = Client(id: .init(), name: "Sam")
    static let gandalf = Client(id: .init(), name: "Gandalf")
}
