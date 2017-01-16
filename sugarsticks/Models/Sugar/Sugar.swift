//
//  Sugar.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 16/01/2017.
//  Copyright © 2017 etolstoy. All rights reserved.
//

import RealmSwift

class Sugar: Object {
    dynamic var name = ""
    dynamic var country = ""
    dynamic var donator = ""
    dynamic var collectedAt = Date(timeIntervalSince1970: 1)
}
