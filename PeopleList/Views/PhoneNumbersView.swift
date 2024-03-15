//
//  DetailedContactsView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct PhoneNumbersView: View {
    let persons: [Person]
    
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationStack {
            List(selection: $singleSelection) {
                ForEach(persons) { person in
                    Section {
                        SectionView(
                            systemImageName: .phone,
                            text: person.phoneNumber
                        )
                        .padding(.leading, 2)
                
                        SectionView(
                            systemImageName: .email,
                            text: person.email
                        )
                            
                    } header: {
                        Text(person.fullName)
                    }

                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    PhoneNumbersView(persons: Person.getContact())
}
