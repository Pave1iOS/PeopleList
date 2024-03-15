//
//  ContentView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let persons = Person.getContact()
        
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
