//
//  DataService.swift
//  My Books
//
//  Created by Chetwyn on 12/17/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let testBooks = [
        Book(name: "How to Think Like Sherlock Holmes", authors: "Maria Konnikova"),
        Book(name: "Mastery", authors: "Robert Greene")
    ]
    
    func getAllBooks() -> [Book] {
        return testBooks
    }
    
    //TODO: Clean up for production code
    func getUnreadBooks() -> [Book] {
        var unReadBooks = [Book]()
        for book in testBooks {
            if book.isRead == false {
                unReadBooks.append(book)
            }
        }
        return unReadBooks
    }
    
    //TODO: Clean up for production code
    func getRandomBook() -> Book {
        let bookIndex = createRandomNumber(withMaximumValueOf: testBooks.count)
        let book = testBooks[bookIndex]
        return book
    }

    
}
