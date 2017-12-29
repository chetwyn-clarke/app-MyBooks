//
//  RandomBookVC.swift
//  My Books
//
//  Created by Chetwyn on 12/28/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class RandomBookVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var randomBookTable: UITableView!
    
    private(set) public var book: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        randomBookTable.delegate = self
        randomBookTable.dataSource = self
        
        randomBookTable.estimatedRowHeight = 90
        randomBookTable.rowHeight = UITableViewAutomaticDimension
    }
    
    func initBook(book: Book) {
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
    
    @IBAction func refreshBtnPressed(_ sender: Any) {
        self.book = DataService.instance.getRandomBook()
        randomBookTable.reloadData()
    }
    


}
