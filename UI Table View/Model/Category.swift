//
//  Category.swift
//  UI Table View
//
//  Created by Taha Magdy on 7/24/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation


// - Model is some type of class of struct that represent data.
// - We can have more structs|class to represent different data
//   like person, category, transaction, ...
//   each will be a struct inside the Model directory.
// - Those abstractions can be used in another places.

struct  Category {
    
    // Struct Members
    private(set) public var title: String
    private(set) public var imageName: String
    
    // Struct initializer
    init(title: String, imageName: String) {
        
        self.title = title
        self.imageName = imageName
    } // end init()
    
} // end struct
