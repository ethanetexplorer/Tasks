//
//  ContentView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var taskList = [
    TaskItem(title: "Refill cow extract", priority: 1),
    TaskItem(title: "Watch videos", isDone: true, priority: 3),
    TaskItem(title: "Scam the class", priority: 2)
    ]
    
    var body: some View {
            NavigationView{
                List($taskList){ $taskItem in
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
