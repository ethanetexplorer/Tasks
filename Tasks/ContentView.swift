//
//  ContentView.swift
//  Tasks
//
//  Created by Ethan Lim on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Section("Section A: gibberish"){
                Text("aerbug")
                    .padding()
                Text("asdf")
                    .padding()
            }
            Section("Section B: repeated items"){
                ForEach(0..<5){ item in
                    Text("Repeated items")
                        .padding()
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
