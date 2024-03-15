//
//  ContentView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContact()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.circle.fill")
                    Text("Contacts")
                }
            
            PhoneNumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Phone")
                }
        }
    }
}

#Preview {
    ContentView()
}
