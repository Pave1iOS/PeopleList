//
//  PersonDetailView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 15.03.2024.
//

import SwiftUI

struct PersonDetailView: View {
    let person: Person
    
    var body: some View {
        Text(person.fullName)
    }
}

#Preview {
    PersonDetailView(
        person: Person(
            id: 1,
            name: "Strige",
            surname: "KimMim",
            email: "aaa@sss",
            phoneNumber: "8-999-000-222"
        )
    )
}
