//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Ilgar Ilyasov on 9/24/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var notesTextView: UITextField!
    
    // MARK: - Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func save(_ sender: Any) {
        
    }
}
