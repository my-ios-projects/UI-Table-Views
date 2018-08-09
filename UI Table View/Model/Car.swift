//
//  Car.swift
//  UI Table View
//
//  Created by Taha Magdy on 8/9/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation

struct Car {
    
    private(set) public var name: String
    private(set) public var price: String
    private(set) public var imageName: String

    init(name: String, price: String, imageName: String) {
        self.name = name
        self.price = price
        self.imageName = imageName
    } // end init
    
} // end struct
