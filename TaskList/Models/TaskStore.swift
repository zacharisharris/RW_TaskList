//
//  TaskStore.swift
//  TaskList
//
//  Created by Harris Zacharis on 3/11/20.
//

class TaskStore {
    var tasks = [
        "Code a SwiftUI app",
        "Make a new account",
        "Visit a doctor",
        "Make karaoke playlist",
        "Shop groceries",
        "Walk the cat",
        "iOS Meetup",
        "100 movie reboot marathon",
        "Climb El Capitan"
    ].map {Task(name: $0)}
    
}
