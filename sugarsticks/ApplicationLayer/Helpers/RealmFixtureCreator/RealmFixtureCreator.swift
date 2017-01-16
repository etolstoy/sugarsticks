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
    let images = ["1", "2", "3", "4", "5", "6", "7"]
    
    func prefillRealm() {
        let realm = try! Realm()
        for _ in 1...100 {
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
        sugar.photoImageName = randomImageName()
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
    
    func randomImageName() -> String {
        return randomElementFrom(array: images)
    }
    
    func randomElementFrom(array: Array<String>) -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        return array[randomIndex]
    }
}
