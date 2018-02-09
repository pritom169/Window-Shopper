//
//  Wage.swift
//  Window Shoper
//
//  Created by Pritom  Mazumder on 2/7/18.
//  Copyright © 2018 Pritom  Mazumder. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forwage wage: Double, andPrice price: Double) ->Int{
        return (Int(ceil(price/wage)))
    }
}
