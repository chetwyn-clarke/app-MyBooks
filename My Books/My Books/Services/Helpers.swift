//
//  Helpers.swift
//  My Books
//
//  Created by Chetwyn on 12/17/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

func createRandomNumber(withMaximumValueOf number:Int) -> Int {
    let randomNumber = arc4random_uniform(UInt32(number))
    return Int(randomNumber)
}

func createBookStatus(book: Book) -> String {
    var readStatusText: String = ""
    var ownershipStatusText: String = ""
    var detailText: String
    
    if let rStatus = book.readStatus {
        switch rStatus {
        case .wasRead:
            readStatusText = "Already read."
        case .currentlyReading:
            readStatusText = "Currently Reading."
        case .toRead:
            readStatusText = "Want to read."
        }
    }
    
    if let oStatus = book.ownershipStatus {
        switch oStatus {
        case .doNotOwn:
            ownershipStatusText = "Don't own it."
        case .ownPhysicalCopy:
            ownershipStatusText = "Own a hard copy."
        case .ownElectronicCopy:
            ownershipStatusText = "Own an electronic copy."
        }
    }
    
    detailText = "\(readStatusText)\n\(ownershipStatusText)"
    print(detailText)
    return detailText
}


