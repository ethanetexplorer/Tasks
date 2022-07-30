//
//  TaskDetailView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct TaskDetailView: View {
    
    var taskItem: TaskItem
    
    var body: some View {
        Text(taskItem.title)
    }
}

struct TaskDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetailView(taskItem: TaskItem(title: "Sample todo item"))
    }
}
