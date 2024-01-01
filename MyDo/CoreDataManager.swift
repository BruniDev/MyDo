//
//  CoreDataManager.swift
//  MyDo
//
//  Created by 정현 on 12/30/23.
//

import Foundation
import CoreData

class CoreDataManager: ObservableObject {
    let container = NSPersistentContainer(name: "MyDo")
    
    init(){
        container.loadPersistentStores{
            desc,error in
            if let error = error {
                print("\(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("DATA SAVED")
        } catch {
            print("FAILED TO SAVE")
        }
    }
    func addTodo(title : String, memo : String, context: NSManagedObjectContext){
        let todo = ToDoItem(context: context)
        todo.id = UUID()
        todo.title = title
        todo.memo = memo
        
        save(context: context)
    }
    
    
    func editTodo(title : String, memo : String, context: NSManagedObjectContext){
        let todo = ToDoItem(context: context)
        todo.id = UUID()
        todo.title = title
        todo.memo = memo
        
        save(context: context)
    }
    
    
}
