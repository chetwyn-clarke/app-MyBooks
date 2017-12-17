//
//  Book.swift
//  My Books
//
//  Created by Chetwyn on 12/11/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

struct Book {
    
    var name: String
    var authors: String?
    var firstAuthor: String?
    var secondAuthor: String?
    var thirdAuthor: String?
    
    //TODO: Determine rest of default Settings
    var isRead: Bool = false
    
    init(name: String, authors: String) {
        self.name = name
        self.authors = authors
    }
    
}
