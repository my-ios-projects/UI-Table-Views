//
//  DataService.swift
//  UI Table View
//
//  Created by Taha Magdy on 7/24/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation

/* A singlton class: it contains tools;
 * so insteam of creating a lot of instances;
 * let's have one static singleton instance
 */
class DataService {
    
    static let instance = DataService()
    
    
    private let categoryDataSource = [
        Category(title: "Bentley", imageName: "Bentley3"),
        Category(title: "Porsche", imageName: "Porsche"),
        Category(title: "Mercedes", imageName: "Mercedes"),
        Category(title: "Rolls Royce ", imageName: "Rolls0"),
        Category(title: "Volvo", imageName: "Volvo"),
        Category(title: "bmw5", imageName: "bmw5"),
        Category(title: "a8", imageName: "a8"),
    ]
    
    
    func getCategories() -> [Category] {
        return self.categoryDataSource
    }

} // end Class
