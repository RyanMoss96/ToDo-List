//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Ryan Moss on 08/05/2020.
//  Copyright © 2020 Ryan Moss. All rights reserved.
//

import SwiftUI

struct ToDoListItemDetails: View {
    
    let toDoItem: ToDoItem
    
    var body: some View {
        Text(toDoItem.title)
    }
}

struct ToDoListItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemDetails(toDoItem: toDoItemsTestData[0])
    }
}
