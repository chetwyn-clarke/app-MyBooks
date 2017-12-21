//
//  Book.swift
//  My Books
//
//  Created by Chetwyn on 12/11/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

struct Book {
    
    private(set) public var name: String
    
    private(set) public var authors: String?
    private(set) public var authors2: [Author]?
    private(set) public var firstAuthor: String?
    private(set) public var secondAuthor: String?
    private(set) public var thirdAuthor: String?
    
    //TODO: Determine rest of default Settings
    private(set) public var readStatus: ReadStatus?
    private(set) public var ownershipStatus: OwnershipStatus?
    
    private(set) public var notes: String?
    
    //TODO: Future features
    private(set) public var categoy: Category?
    
    
    init(name: String, authors: String, readStatus: ReadStatus) {
        self.name = name
        self.authors = authors
        self.readStatus = readStatus
    }
    
    func addAuthor() {
        //TODO:
    }
    
}

enum ReadStatus {
    case wasRead, currentlyReading, toRead
}

enum OwnershipStatus {
    case doNotOwn, ownPhysicalCopy, ownElectronicCopy
}

//TODO: Future feature to implement
enum Category {
    case history, biography
}
