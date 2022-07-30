//
//  TaskListView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct TaskListView: View {
    
    @ObservedObject var taskManager = TaskManager()
    
    var body: some View {
        NavigationView{
            List{
                ForEach($taskManager.taskItems){ $taskItem in
                    NavigationLink(destination: TaskDetailView(taskItem: $taskItem)){
                        HStack {
                                Image(systemName: taskItem.isDone ? "checkmark.diamond.fill": "diamond")
                                .onTapGesture {
                                    taskItem.isDone.toggle()
                                }
                                Text(taskItem.title)
                        }
                    }
                }
                .navigationTitle("Tasks")
            }
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
