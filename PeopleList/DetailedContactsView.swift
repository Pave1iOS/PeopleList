//
//  DetailedContactsView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct DetailedContactsView: View {
    let persons: [Person]
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationStack {
            List(selection: $singleSelection) {
                ForEach(persons) { person in
                    Section {
                        VStack(alignment: .leading) {
                                SectionListView(
                                    systemImageName: "phone.fill",
                                    text: person.phoneNumber
                                )
                                .padding(.leading, 2)
                        }
                        VStack(alignment: .leading) {
                                SectionListView(
                                    systemImageName: "envelope.fill",
                                    text: person.email
                                )
                            
                        }
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

struct SectionListView: View {
    let systemImageName: String
    let text: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "\(systemImageName)")
                .foregroundStyle(Color.blue)
            Text(text)
                .font(.system(size: 15))
        }
    }
}

#Preview {
    DetailedContactsView(persons: Person.getContact())
}
