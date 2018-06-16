//
//  Constants.swift
//  Documents
//
//  Created by Nathaniel Banderas on 6/15/18.
//  Copyright © 2018 Nathaniel Banderas. All rights reserved.
//

import Foundation

var documents:[String]?

func saveData(documents:[String]) {
    UserDefaults.standard.set(documents, forKey: "documents")
}

func fetchData() -> [String]? {
    if let entry = UserDefaults.standard.array(forKey: "documents") as? [String] {
        return entry
    } else {
        return nil
    }
}
