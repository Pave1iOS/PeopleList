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
        NavigationStack {
            List(persons) { person in
                NavigationLink(person.fullName) {
                    PersonDetailView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactsView(persons: Person.getContact())
}
