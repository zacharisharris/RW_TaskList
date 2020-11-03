//
//  ContentView.swift
//  TaskList
//
//  Created by Harris Zacharis on 3/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore : TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskStore.tasks) {
                    task in
                    Text(task.name)
            }
                .onMove(perform: { sourceIndices, destinationIndex in
                    self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
 
                })
                .onDelete(perform: { indexSet in
                    self.taskStore.tasks.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(action: {modalIsPresented = true}) {
                    Image(systemName: "plus")})
            }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
