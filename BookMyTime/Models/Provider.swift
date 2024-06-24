//
//  Provider.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import Foundation
import Observation

@Observable final class Provider: Identifiable {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
