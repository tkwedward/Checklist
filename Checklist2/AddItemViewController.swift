//
//  AddItemViewController.swift
//  Checklist2
//
//  Created by Edward Tang on 12/25/20.
//  Copyright © 2020 Edward Tang. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

    
    @IBAction func cancel(){
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(){
        print("Contents of the text field: \(textField.text!)")
        navigationController?.popViewController(animated: true)
    }
    
    // MARK:- Table View Delegates
    override func tableView(_ tableVIew: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
}
