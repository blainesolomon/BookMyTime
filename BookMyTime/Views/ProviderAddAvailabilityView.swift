//
//  ProviderAddAvailabilityView.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import SwiftUI

struct ProviderAddAvailabilityView: View {
    var provider: Provider

    @State private var startDate = Date()
    @State private var endDate = Date()

    @Environment(\.dismiss) private var dismiss
    @Environment(DataManager.self) private var dataManager

    var body: some View {
        NavigationStack {
            Form {
                Section("From") {
                    DatePicker("Start Date & Time",
                               selection: $startDate,
                               displayedComponents: [.hourAndMinute, .date])
                }

                Section("To") {
                    DatePicker("End Date & Time",
                               selection: $endDate,
                               displayedComponents: [.hourAndMinute, .date])
                }
            }
            .navigationTitle("Add Availability")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        save()
                        dismiss()
                    }
                }

                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", role: .cancel) {
                        dismiss()
                    }
                }
            }
        }
    }

    private func save() {
        let availability = Availability(startDate: startDate, endDate: endDate, providerID: provider.id)

        dataManager.addAvailability(availability: availability)
    }
}

#Preview {
    ProviderAddAvailabilityView(provider: .alex)
        .environment(DataManager())
}
