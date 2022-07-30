//
//  ContentView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var taskManager =  TaskManager()
    
    var body: some View {
            TabView {
                TaskListView(taskManager: taskManager)
                    .tabItem {
                        Label("Tasks", systemImage: "checkmark.circle.fill")
                    }
                TaskStatsView(taskManager: taskManager)
                    .tabItem("Stats", systemImage: "chart.xyaxis.line")
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
