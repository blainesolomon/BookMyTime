//
//  BookMyTimeApp.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

@main
struct BookMyTimeApp: App {
    @State private var dataManager = DataManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataManager)
        }
    }
}
