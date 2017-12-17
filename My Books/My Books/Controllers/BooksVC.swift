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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as? BookCell {
            //TODO
            return cell
        }
    }


}

