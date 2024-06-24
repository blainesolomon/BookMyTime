//
//  DateHelper.swift
//  BookMyTime
//
//  Created by Blaine on 6/23/24.
//

import Foundation

extension Double {
    static let fifteenMin = 15.0 * 60.0
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
