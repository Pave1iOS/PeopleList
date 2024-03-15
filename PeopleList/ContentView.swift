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
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
                }
            
            ContactsFullView(persons: persons)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts full")
                }
        }
    }
}

#Preview {
    ContentView()
}
