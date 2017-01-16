//
//  Sugar+CoreDataProperties.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 06/12/2016.
//  Copyright © 2016 etolstoy. All rights reserved.
//

import Foundation
import CoreData


extension Sugar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Sugar> {
        return NSFetchRequest<Sugar>(entityName: "Sugar");
    }

    @NSManaged public var country: String?
    @NSManaged public var name: String?
    @NSManaged public var donator: String?
    @NSManaged public var collectedAt: NSDate?

}
