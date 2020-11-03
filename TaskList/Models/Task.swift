//
//  Task.swift
//  TaskList
//
//  Created by Harris Zacharis on 3/11/20.
//
import Foundation

struct Task : Identifiable {
    let id = UUID()
    var name: String
    var isCompleted = false
}
