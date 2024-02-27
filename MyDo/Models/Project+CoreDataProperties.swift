//
//  Project+CoreDataProperties.swift
//  MyDo
//
//  Created by 정현 on 1/22/24.
//
//

import Foundation
import CoreData


extension Project {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Project> {
        return NSFetchRequest<Project>(entityName: "Project")
    }

    @NSManaged public var title: String?
    @NSManaged public var date: Date?
    @NSManaged public var color: Int64
    @NSManaged public var todoData: ToDoData?

}

extension Project : Identifiable {

}
