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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toBooksList" {
            
            if let navController = segue.destination as? UINavigationController {
                if let booksVC = navController.topViewController as? BooksVC {
                    booksVC.initBooks(books: sender as! [Book])
                    booksVC.navigationItem.title = vcTitle
                    print("Books sent")
                } else {
                    print("No books sent")
                }
            } else {
                print("Cannot find Nav Controller")
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
    }
    
    @IBAction func unWindToMainMenu(unwindSegue: UIStoryboardSegue) {
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
