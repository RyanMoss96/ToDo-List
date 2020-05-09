//
//  ToDoListCategory.swift
//  ToDoList
//
//  Created by Ryan Moss on 09/05/2020.
//  Copyright © 2020 Ryan Moss. All rights reserved.
//

import Foundation

struct ToDoListCategory: Identifiable {
    let id = UUID()
    let name: String
    var toDoListItems: [ToDoItem]
}
