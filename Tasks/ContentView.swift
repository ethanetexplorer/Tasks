//
//  ContentView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView{
                List(taskList){ taskItem in
                    NavigationLink(destination: TaskDetailView(taskItem: taskItem)){
                        HStack {
                                Image(systemName: taskItem.isDone ? "checkmark.diamond.fill": "diamond")
                                Text(taskItem.title)
                        }
                    }
                    }
                }
                .navigationTitle("Tasks")
            }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
