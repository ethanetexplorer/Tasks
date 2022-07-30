//
//  TaskManager.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//


import Foundation
import SwiftUI

    class TaskManager: ObservableObject {
        
        @Published var taskItems: [TaskItem] = [] {
            didSet {
                save()
            }
        }
        
        var undoneTasks: [TaskItem]{
            taskItems.filter{
                $0.isDone == false
            }
        }
        
        let sampleTaskItems: [TaskItem] =  [
            TaskItem(title: "Walk the cat"),
            TaskItem(title: "Feed the cows"),
            TaskItem(title: "Scam the class", isDone: true),
        ]
        
        init() {
            load()
        }
        
        func getArchiveURL() -> URL {
            let plistName = "tasks.plist"
            let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            
            return documentsDirectory.appendingPathComponent(plistName)
        }
        
        func save() {
            let archiveURL = getArchiveURL()
            let propertyListEncoder = PropertyListEncoder()
            let encodedTaskItems = try? propertyListEncoder.encode(taskItems)
            try? encodedTaskItems?.write(to: archiveURL, options: .noFileProtection)
        }
        
        func load() {
            let archiveURL = getArchiveURL()
            let propertyListDecoder = PropertyListDecoder()
            
            var finalTaskItems: [TaskItem]!
            
            if let retrievedTaskItemData = try? Data(contentsOf: archiveURL),
                let decodedTaskItems = try? propertyListDecoder.decode([TaskItem].self, from: retrievedTaskItemData) {
                    finalTaskItems = decodedTaskItems
            } else {
                finalTaskItems = sampleTaskItems
            }
            
            taskItems = finalTaskItems
        
        }
    }
