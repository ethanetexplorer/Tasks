//
//  TaskStatsView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct TaskStatsView: View {
    @ObservedObject var taskManager: TaskManager
    var body: some View {
        Text("Tasks left: \(taskManager.taskItems.count) total tasks.")
        Text("You have \(taskManager.taskItems.filter{ $0.isDone == false}.count ) unfinished tasks")
    }
}

struct TaskStatsView_Previews: PreviewProvider {
    static var previews: some View {
        TaskStatsView()
    }
}
