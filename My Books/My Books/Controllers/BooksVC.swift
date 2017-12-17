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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksTable.dataSource = self
        booksTable.delegate = self
        
        //booksTable.rowHeight = UITableViewAutomaticDimension
        //booksTable.estimatedRowHeight = 80
        
        booksTable.rowHeight = 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getAllBooks().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as? BookCell {
            let book = DataService.instance.getAllBooks()[indexPath.row]
            cell.updateViews(book: book)
            return cell
        } else {
            return BookCell()
        }
    }
    
}

