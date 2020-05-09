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
    
    @State private var test: String = ""

    var body: some View {
        VStack {
            Text(test)
            TextField("Test", text: $test)
        }
        .navigationBarTitle(Text(toDoItem.title), displayMode: .inline)
    }
}

struct ToDoListItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemDetails(toDoItem: toDoItemsTestData[0])
    }
}
