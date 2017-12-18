//
//  BookDetailCell.swift
//  My Books
//
//  Created by Chetwyn on 12/18/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class BookDetailCell: UITableViewCell {
    
    @IBOutlet weak var fieldLbl: UILabel!
    @IBOutlet weak var valueLbl: UILabel!
    
    func updateViews(row: Int, book: Book) {
        switch row {
        case 0:
            fieldLbl.text = "TITLE"
            valueLbl.text = book.name
        case 1:
            fieldLbl.text = "AUTHORS"
            valueLbl.text = book.authors
        case 2:
            fieldLbl.text = "STATUS"
            valueLbl.text = createBookStatus(book: book)
        case 3:
            fieldLbl.text = "NOTES"
            valueLbl.text = book.notes
        default:
            fieldLbl.text = "COMING SOON!"
            valueLbl.text = "Coming soon!"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
