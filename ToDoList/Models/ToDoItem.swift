//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Ryan Moss on 08/05/2020.
//  Copyright © 2020 Ryan Moss. All rights reserved.
//

import Foundation

struct ToDoItem: Identifiable {
    let id = UUID();
    let title: String
    var description: String?
    let status: ToDoItemStatus
    
    init(title: String, description: String, status: ToDoItemStatus) {
        self.init(title: title, status: status)
        self.description = description
    }
    
    init(title: String, status: ToDoItemStatus) {
        self.title = title
        self.status = status
    }
}

let toDoItemsTestData = [
    ToDoItem(title: "Title 1", description: "Description 1", status: .todo),
    ToDoItem(title: "Title 2", status: .active)
]
