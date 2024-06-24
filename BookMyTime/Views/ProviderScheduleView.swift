//
//  ProviderScheduleView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ProviderScheduleView: View {
    var provider: Provider

    @Environment(DataManager.self) private var dataManager

    @State private var availability = [Availability]()
    @State private var showingAddAvailabilitySheet = false

    var body: some View {
        ZStack {
            List {
                Section("Availability") {
                    ForEach(availability) { availability in
                        Text("\(availability.startDate.formatted(date: .long, time: .shortened)) - \(availability.endDate.formatted(date: .omitted, time: .shortened))")
                    }

                    if availability.isEmpty {
                        ContentUnavailableView {
                            Label("No current availability", systemImage: "person.badge.clock.fill")
                        }
                    }

                    Button("Add More Availability") {
                        showingAddAvailabilitySheet = true
                    }
                }
            }
        }
        .sheet(isPresented: $showingAddAvailabilitySheet) {
            ProviderAddAvailabilityView(provider: provider)
        }
        .navigationTitle(provider.name)
        .onChange(of: dataManager.availability, initial: true) {
            availability = dataManager.availability.filter {
                $0.providerID == provider.id
            }
        }
    }
}

#Preview("Alex") {
    NavigationStack {
        ProviderScheduleView(provider: .alex)
            .environment(DataManager())
    }
}

#Preview("Empty") {
    NavigationStack {
        ProviderScheduleView(provider: .milo)
            .environment(DataManager())
    }
}
