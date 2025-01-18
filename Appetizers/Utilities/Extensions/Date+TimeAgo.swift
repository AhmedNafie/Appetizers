//
//  Date+TimeAgo.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 18/01/2025.
//

import Foundation

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var hundredYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
}
