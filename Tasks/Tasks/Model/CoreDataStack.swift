//
//  CoreDataStack.swift
//  Tasks
//
//  Created by Ilgar Ilyasov on 9/24/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()

    // When you create a property and give it an initial value, that runs when the Class is been initialized.
    // And so you can't actually access self. , other properties. It's kind of restrictive time to
    // create something.
    // By making it lazy you insuring that it doesn't get created until adter the Class is intialized.
    // You kind of have access to everything
    lazy var container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Tasks")
        container.loadPersistentStores { (_, error) in
            
            if let error = error {
                fatalError("Failed to load persistent store: \(error)")
            }
        }
        return container
    }()
    
    var mainContext: NSManagedObjectContext {
        return container.viewContext // It's the main context
    }
    
}
