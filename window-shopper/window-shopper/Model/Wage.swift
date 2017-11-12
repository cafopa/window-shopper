//
//  Wage.swift
//  window-shopper
//
//  Created by Casper Panah on 09/11/2017.
//  Copyright © 2017 Casper Panah. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
