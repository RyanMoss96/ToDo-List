//
//  ToDoListItemList.swift
//  ToDoList
//
//  Created by Ryan Moss on 08/05/2020.
//  Copyright © 2020 Ryan Moss. All rights reserved.
//

import SwiftUI

struct ToDoListItemList: View {
    
    let toDoItems: [ToDoItem]
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Categories")) {
                    List(toDoItems) { toDoItem in
                        NavigationLink(destination: ToDoListItemDetails(toDoItem: toDoItem)) {
                            VStack(alignment: .leading) {
                                Text(toDoItem.title)
                                Text(self.descriptionPresent(description: toDoItem.description))
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: CreateNewToDoListItemView()) {
                        Text("Add New Item")
                    }
                }
            }
        }
    }
    
    func descriptionPresent(description: String?) -> String {
        if let itemDescription: String = description {
            return itemDescription
        }
        
        return "No Description"
    }
}

struct ToDoListItemList_Previews: PreviewProvider {    
    static var previews: some View {
        ToDoListItemList(toDoItems: toDoItemsTestData)
    }
}
