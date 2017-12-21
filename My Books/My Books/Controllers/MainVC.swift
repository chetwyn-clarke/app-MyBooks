//
//  MainVC.swift
//  My Books
//
//  Created by Chetwyn on 12/11/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var vcTitle: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toBooksList" {
            
            if let navController = segue.destination as? UINavigationController {
                if let booksVC = navController.topViewController as? BooksVC {
                    booksVC.initBooks(books: sender as! [Book])
                    booksVC.navigationItem.title = vcTitle
                }
            }
            
        } else if segue.identifier == "toRandomBook" {
            
            if let bookDetailVC = segue.destination as? BookDetailVC {
                bookDetailVC.initBook(book: sender as! Book)
            }
            
        }
        
    }
    
    
    @IBAction func allBooksBtnWasPressed(_ sender: Any) {
        vcTitle = "All Books"
        let books = DataService.instance.getAllBooks()
        performSegue(withIdentifier: "toBooksList", sender: books)
    }
    
    @IBAction func wishListBtnWasPressed(_ sender: Any) {
        vcTitle = "Wish List"
        let books = DataService.instance.getUnreadBooks()
        performSegue(withIdentifier: "toBooksList", sender: books)
    }
    
    @IBAction func randomBookBtnWasPressed(_ sender: Any) {
        let book = DataService.instance.getRandomBook()
        performSegue(withIdentifier: "toRandomBook", sender: book)
        
    }
    
    @IBAction func unWindToMainMenu(unwindSegue: UIStoryboardSegue) {
        
    }

}
