//
//  Helpers.swift
//  My Books
//
//  Created by Chetwyn on 12/17/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

func createRandomNumber(withMaximumValueOf number:Int) -> Int {
    let randomNumber = arc4random_uniform(UInt32(number))
    return Int(randomNumber)
}
