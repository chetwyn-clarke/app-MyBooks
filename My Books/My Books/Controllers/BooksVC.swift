//
//  ViewController.swift
//  My Books
//
//  Created by Chetwyn on 12/11/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class BooksVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var booksTable: UITableView!
    
    private(set) public var books = [Book]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksTable.dataSource = self
        booksTable.delegate = self
        
        
        booksTable.estimatedRowHeight = 80
        booksTable.rowHeight = UITableViewAutomaticDimension
    }
    
    func initBooks(books: [Book]) {
        self.books = books
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return books.count
        //return DataService.instance.getAllBooks().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as? BookCell {
            let book = books[indexPath.row]
            //let book = DataService.instance.getAllBooks()[indexPath.row]
            cell.updateViews(book: book)
            return cell
        } else {
            return BookCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let book = books[indexPath.row]
        performSegue(withIdentifier: "toBookDetailVC", sender: book)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let bookDetailVC = segue.destination as? BookDetailVC{
            assert(sender as? Book != nil)
            bookDetailVC.initBooks(book: sender as! Book)
        }
    }
    
}

