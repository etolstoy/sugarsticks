//
//  AppDelegate.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 06/12/2016.
//  Copyright © 2016 etolstoy. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let fixtureCreator = RealmFixtureCreator.init()
        fixtureCreator.prefillRealm()
        
        let realm = try! Realm()
        let sugars = realm.objects(Sugar.self)
        print(sugars)
        return true
    }
}
