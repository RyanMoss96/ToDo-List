//
//  ContentView.swift
//  ToDoList
//
//  Created by Ryan Moss on 08/05/2020.
//  Copyright © 2020 Ryan Moss. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let toDoItems: [ToDoItem] = [
        ToDoItem(title: "Title 1", description: "Description 1", status: .todo),
        ToDoItem(title: "Title 2", status: .active)
    ]
    
    var body: some View {
        NavigationView {
            ToDoListItemList(toDoItems: toDoItems)
                .navigationBarTitle("To-Do List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
