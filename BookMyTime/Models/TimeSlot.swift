//
//  TimeSlot.swift
//  BookMyTime
//
//  Created by Blaine on 6/24/24.
//

import Foundation
import Observation

struct TimeSlot: Identifiable {
    let id = UUID()
    let startTime: Date
    let endTime: Date
}

extension TimeSlot {
    init(startTime: Date, duration: TimeInterval = 15 * 60) {
        self.startTime = startTime
        self.endTime = startTime.addingTimeInterval(duration)
    }
}

extension TimeSlot {
    static func generateTimeSlots(from start: Date, to end: Date, interval: TimeInterval = 15 * 60) -> [TimeSlot] {
        var timeSlots: [TimeSlot] = []
        var currentStartTime = start

        while currentStartTime < end {
            let timeSlot = TimeSlot(startTime: currentStartTime, duration: interval)
            timeSlots.append(timeSlot)
            currentStartTime = timeSlot.endTime
        }

        return timeSlots
    }
}
