//
//  TodoItem.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import Foundation

struct TaskItem: Identifiable, Codable{
    let id = UUID()
    var title: String
    var isDone = false // It is inferred that isDone is a bool 
    var priority: Int = 4
}
