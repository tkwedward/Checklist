//
//  Checklist.swift
//  Checklist2
//
//  Created by Edward Tang on 12/25/20.
//  Copyright © 2020 Edward Tang. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var iconName = ""
    var items = [ChecklistItem]()
    init(name: String, iconName: String = "No Icon"){
        self.name = name
        self.iconName = iconName
        super.init()
    }
    
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where item.checked == false {
            count += 1
        }
        return count
    }
}
