//
//  TaskDetailView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct TaskDetailView: View {
    
    @Binding var taskItem: TaskItem
    
    var body: some View {
        VStack{
            Form{
                TextField("Task title here", text: $taskItem.title)
                    .foregroundColor(taskItem.isDone ? .red : .green)
                Button(taskItem.isDone ? "Mark as incomplete" : "Mark as complete"){
                    taskItem.isDone.toggle()
                }
            }
        }
    }
}

struct TaskDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetailView(taskItem: .constant(TaskItem(title: "Sample todo item")))
    }
}
