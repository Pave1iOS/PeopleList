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
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(20)
                    Spacer()
                }
                SectionView(systemImageName: .phone, text: person.phoneNumber)
                SectionView(systemImageName: .email, text: person.email)
            }
            .navigationTitle(person.fullName)
        }
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
