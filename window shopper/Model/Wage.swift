//
//  Wage.swift
//  window shopper
//
//  Created by Manohar Kurapati on 28/10/2017.
//  Copyright © 2017 Manosoft. All rights reserved.
//

import Foundation

class Wage{
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
    
}
