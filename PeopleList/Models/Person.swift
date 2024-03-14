//
//  User.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    func getContact() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names
        let surnames = dataStore.surnames
        let emails = dataStore.email
        let phoneNumbers = dataStore.phoneNumbers
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
