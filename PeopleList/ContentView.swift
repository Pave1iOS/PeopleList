//
//  ContentView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
                }
            
            DetailedContactsView()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("Details")
                }
        }
    }
}

#Preview {
    ContentView()
}
