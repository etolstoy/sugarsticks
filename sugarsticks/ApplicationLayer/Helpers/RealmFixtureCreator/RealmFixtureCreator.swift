//
//  RealmFixtureCreator.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 16/01/2017.
//  Copyright © 2017 etolstoy. All rights reserved.
//

import UIKit
import RealmSwift

class RealmFixtureCreator: Object {
    let sugarNames = ["McDonalds", "KFC", "Аэрофлот", "Трансаэро", "Теремок 1", "Теремок 2"]
    let sugarCountries = ["Россия", "США", "Германия", "Польша", "Эстония", "Чехия"]
    let donators = ["Егор", "Дмитрий", "Владимир"]
    
    func prefillRealm() {
        let realm = try! Realm()
        for _ in 1...20 {
            let sugar = generateRandomSugar()
            try! realm.write {
                realm.add(sugar)
            }
        }
    }
    
    func generateRandomSugar() -> Sugar {
        let sugar = Sugar()
        sugar.name = randomSugarName()
        sugar.country = randomSugarCountry()
        sugar.donator = randomDonator()
        sugar.collectedAt = Date.init()
        return sugar
    }
    
    func randomSugarName() -> String {
        return randomElementFrom(array: sugarNames)
    }
    
    func randomSugarCountry() -> String {
        return randomElementFrom(array: sugarCountries)
    }
    
    func randomDonator() -> String {
        return randomElementFrom(array: donators)
    }
    
    func randomElementFrom(array: Array<String>) -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        return array[randomIndex]
    }
}