//
//  Activity.swift
//  ActivityTimeManager
//
//  Created by Alex Cho on 2019-10-24.
//  Copyright © 2019 Alex Cho. All rights reserved.
//

import Foundation

enum ActivityType: String {
    case Health = "Health"
    case Study = "Study"
    case Hobby = "Hobby"
    case Entertainment = "Entertainment"
    case Other = "Other"
}

struct Activity {
    var title: String
    var location: String
    var activityType: ActivityType
    var time1: String
    var unit1: String
    var time2: String
    var unit2: String
    
    var schedule: Schedule
    var totalTime:Time
    
    init(title: String, location: String, activityType: ActivityType) {
        self.title = title
        self.location = location
        self.activityType = activityType
        self.time1 = "00"
        self.unit1 = "min"
        self.time2 = "00"
        self.unit2 = "sec"
        
        self.schedule = Schedule()
        self.totalTime = Time()
        
        
    }
}

struct Schedule {
    
}

struct Time {
    
    var days: Int
    var hours: Int
    var minutes: Int
    var seconds: Int
    
    init() {
        self.seconds = 0
        self.minutes = 0
        self.hours = 0
        self.days = 0
    }
    
    mutating func mutateDays() {
        if self.hours < 24 {
            self.days = 0
        } else {
            self.days = self.hours / 24
            self.hours = self.hours % 60
        }
    }
    
    mutating func mutateHours() {
        if self.minutes < 60 {
            self.hours = 0
        } else {
            self.hours = self.minutes / 60
            self.minutes = self.minutes % 60
        }
    }
    
    mutating func mutateMinutes() {
        if self.seconds < 24 {
            self.minutes = 0
        } else {
            self.minutes = self.seconds / 60
            self.seconds = self.seconds % 60
        }
    }

}
