//
//  Task+Convenience.swift
//  Task
//
//  Created by Ilgar Ilyasov on 9/24/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension Task {
    
    convenience init(name: String, notes: String? = nil, context: NSManagedObjectContext) {
        
        self.init(context: context)
        self.name = name
        self.notes = notes
    }
}
