//
//  ContactsView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Text(person.fullName)
        }
    }
}

#Preview {
    ContactsView(persons: Person.getContact())
}
