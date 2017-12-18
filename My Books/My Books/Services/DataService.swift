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
    
    private var books = [
        Book(name: "How to Think Like Sherlock Holmes", authors: "Maria Konnikova", readStatus: ReadStatus.wasRead),
        Book(name: "Mastery", authors: "Robert Greene", readStatus: ReadStatus.wasRead),
        Book(name: "I Am Malala", authors: "Malala Yousafzai", readStatus: ReadStatus.toRead),
        Book(name: "The Immortal Life of Henrietta Lacks", authors: "Rebecca Skloot", readStatus: ReadStatus.wasRead),
        Book(name: "Letters from a Stoic", authors: "Seneca", readStatus: ReadStatus.wasRead),
        Book(name: "Cosmos", authors: "Carl Sagan", readStatus: ReadStatus.wasRead),
        Book(name: "Excellent Sheep", authors: "William Deresiewicz", readStatus: ReadStatus.wasRead),
        Book(name: "Antifragile", authors: "Nassim Nicholas Taleb", readStatus: ReadStatus.wasRead),
        Book(name: "The Story of My Life", authors: "Helen Keller", readStatus: ReadStatus.toRead),
        Book(name: "The Village Effect", authors: "Susan Pinker", readStatus: ReadStatus.toRead),
        Book(name: "Why We Make Things and Why It Matters", authors: "Peter Korn", readStatus: ReadStatus.toRead),
        Book(name: "On the Shortness of Life", authors: "Seneca", readStatus: ReadStatus.toRead),
        Book(name: "The Godfather", authors: "Mario Puzo", readStatus: ReadStatus.toRead),
        Book(name: "The Meditations", authors: "Marcus Aurelius", readStatus: ReadStatus.toRead),
        Book(name: "Pilots of the Line", authors: "Sky Masterson", readStatus: ReadStatus.toRead)
    ]
    
    private var unReadBooks = [Book]()
    
    func getAllBooks() -> [Book] {
        print("All books retrieved by Data Service")
        return books
    }
    
    func getUnreadBooks() -> [Book] {
        
        for book in books {
            if book.readStatus == ReadStatus.toRead {
                unReadBooks.append(book)
            }
        }
        return unReadBooks
    }
    
    func getRandomBook() -> Book {
        let bookIndex = createRandomNumber(withMaximumValueOf: books.count)
        let book = books[bookIndex]
        return book
    }

    
}
