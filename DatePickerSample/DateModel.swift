//
//  DateModel.swift
//  DatePickerSample
//
//  Created by Ryusei Wada on 2019/02/13.
//  Copyright © 2019 Ryusei Wada. All rights reserved.
//

import Foundation

class DateOperator {
    fileprivate var dateFormatter: DateFormatter! = {
        let formatter = DateFormatter()
        formatter.locale = .current
        formatter.timeStyle = .none
        return formatter
    }()
    
    fileprivate let calendar: Calendar = Calendar(identifier: .gregorian)
    
    
    fileprivate func resetTime(date: Date) -> Date{
        print(date)
        var components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        components.hour = 0
        components.minute = 0
        components.second = 0
        
        return calendar.date(from: components)!
    }
    
    
    func calcDateRemainder(firstDate: Date, secondDate: Date? = nil) -> Int{
        var retInterval:Double!
        let firstDateReset = resetTime(date: firstDate)
        
        if secondDate == nil {
            let nowDate: Date = Date()
            let nowDateReset = resetTime(date: nowDate)
            retInterval = firstDateReset.timeIntervalSince(nowDateReset)
            print(retInterval)
        } else {
            let secondDateReset: Date = resetTime(date: secondDate!)
            retInterval = firstDate.timeIntervalSince(secondDateReset)
            print(retInterval)
        }
        
        let ret = retInterval/86400
        
        return Int(floor(ret))  // n日
    }
}
