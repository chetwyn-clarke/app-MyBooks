//
//  BookDetailVC.swift
//  My Books
//
//  Created by Chetwyn on 12/18/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class BookDetailVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var bookDetailTable: UITableView!
    
    private(set) public var book: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bookDetailTable.dataSource = self
        bookDetailTable.delegate = self
        
        bookDetailTable.estimatedRowHeight = 100
        bookDetailTable.rowHeight = UITableViewAutomaticDimension
    }
    
    func initBooks(book: Book) {
        self.book = book
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BookDetailCell", for: indexPath) as? BookDetailCell {
            let book = self.book
            cell.updateViews(row: indexPath.row, book: book!)
            return cell
        }
        
        return BookDetailCell()
    }
    

}
