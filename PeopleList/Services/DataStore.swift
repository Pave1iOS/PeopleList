//
//  DataStore.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 14.03.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Steve",
        "Tom",
        "Jary",
        "Elizabeth",
        "Magraret",
        "Lilis",
        "Oscar",
        "John",
        "Ben",
        "Mark",
        "Kim",
        "Anastasi"
    ]
    
    let surnames = [
        "Jankins",
        "Ovoizniak",
        "Kuper",
        "Glithich",
        "Buffon",
        "Chilini",
        "Countrao",
        "Owen",
        "Mitich",
        "Kistich",
        "Gribachev",
        "Tropman"
    ]
    
    let email = [
        "puxaproussappe-9483@yopmail.com",
        "kuwigideti-7208@yopmail.com",
        "sepreleicoiceu-4737@yopmail.com",
        "wemmimmeuwauru-6608@yopmail.com",
        "wijexoheze-5510@yopmail.com",
        "vekibrilisi-5539@yopmail.com",
        "quazetreifapoi-8310@yopmail.com",
        "mauzexogrusi-2046@yopmail.com",
        "hojuddassatti-5909@yopmail.com",
        "pommalloippouta-9809@yopmail.com",
        "lacoipazini-2194@yopmail.com",
        "poumaloixeyoi-8936@yopmail.com"
    ]
    
    let phoneNumbers = [
        "51(7007)272-65-93",
        "375(92)743-50-67",
        "28(994)264-52-05",
        "79(203)110-46-01",
        "54(94)315-06-12",
        "693(266)287-23-42",
        "87(1733)590-20-38",
        "322(992)804-15-67",
        "46(109)683-88-77",
        "09(6989)695-85-25",
        "724(2419)571-34-63",
        "50(304)908-52-44"
    ]
    
    
    private init () {}
}
