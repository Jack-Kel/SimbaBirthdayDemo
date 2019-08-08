//
//  CustomDate.swift
//  SimbaBirthdayDemo
//
//  Created by Jack Kelly on 6/8/19.
//  Copyright © 2019 Jack Kelly. All rights reserved.
//

import Foundation
struct CustomDate
{
    
    private (set) var date:Date?
    
    init(day:Int, month:Int, year:Int, hour: Int = 0, minutes: Int = 0, timeZone:TimeZone = .current)
    {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.timeZone = timeZone
         dateComponents.hour = hour
        dateComponents.minute = minutes
        
        let userCalendar = Calendar.current
        
        date = userCalendar.date(from: dateComponents)
        
    }
}
