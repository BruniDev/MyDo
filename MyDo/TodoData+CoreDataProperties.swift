//
//  TodoData+CoreDataProperties.swift
//  MyDo
//
//  Created by 정현 on 1/22/24.
//
//

import Foundation
import CoreData


extension TodoData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodoData> {
        return NSFetchRequest<TodoData>(entityName: "TodoData")
    }

    @NSManaged public var title: String?
    @NSManaged public var memo: String?
    @NSManaged public var isCompleted: Data?
    @NSManaged public var project: Project?

}

extension TodoData : Identifiable {

}
