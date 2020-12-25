//
//  AddItemViewController.swift
//  Checklist2
//
//  Created by Edward Tang on 12/25/20.
//  Copyright © 2020 Edward Tang. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

    @IBAction func cancel(){
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(){
        navigationController?.popViewController(animated: true)
    }
}
