//
//  ToDoData+CoreDataProperties.swift
//  MyDo
//
//  Created by 정현 on 2/5/24.
//
//

import Foundation
import CoreData


extension ToDoData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoData> {
        return NSFetchRequest<ToDoData>(entityName: "ToDoData")
    }

    @NSManaged public var isCompleted: Data?
    @NSManaged public var memo: String?
    @NSManaged public var title: String?
    @NSManaged public var project: Project?

}

extension ToDoData : Identifiable {

}
