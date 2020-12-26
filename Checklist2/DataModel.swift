//
//  DataModel.swift
//  Checklist2
//
//  Created by Edward Tang on 12/25/20.
//  Copyright © 2020 Edward Tang. All rights reserved.
//

import Foundation

class DataModel {
    var lists = [Checklist]()
    
    init(){
        loadChecklists()
    }
    
    
    // MARK:- Data Saving
    func documentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func dataFilePath() -> URL {
        return self.documentsDirectory().appendingPathComponent("Checklists.plist")
    }
    
    func saveChecklists (){
        let encoder = PropertyListEncoder()
            
        do {
            let data = try encoder.encode(self.lists)
            try data.write(to: self.dataFilePath(), options: Data.WritingOptions.atomic)
        } catch {
            print("Error encoding item array: \(error.localizedDescription)")
        }
    }// saveChecklistItems
    
    func loadChecklists(){
        let path = self.dataFilePath()
        if let data = try? Data(contentsOf: path){
            let decoder = PropertyListDecoder()
            do {
                lists = try decoder.decode([Checklist].self, from: data)
            } catch {
                print("Error decoding item array: \(error.localizedDescription)")
            }
        }
    }
    
}
