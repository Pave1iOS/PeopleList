//
//  DetailedContactsView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct DetailedContactsView: View {
    let person: [Person]
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    DetailedContactsView(person: Person.getContact())
}
