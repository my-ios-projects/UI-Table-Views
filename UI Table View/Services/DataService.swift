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
 
 - To avoid inconsistant data.
 */
class DataService {
    
    // Singleton (Only one static object)
    static let instance = DataService()
    
    
    // This data is hardcoded; they can be coming from
    // a network|JSON for from a database;
    // whatever; this is the right place for data source.
    
    // * Array of category struct.
    // * here, the data is filled.
    private let categoryDataSource = [
        Category(title: "Bentley", imageName: "Bentley3"),
        Category(title: "Porsche", imageName: "Porsche"),
        Category(title: "Mercedes", imageName: "Mercedes"),
        Category(title: "Rolls Royce ", imageName: "Rolls0"),
        Category(title: "Volvo", imageName: "Volvo"),
        Category(title: "bmw5", imageName: "bmw5"),
        Category(title: "a8", imageName: "a8"),
    ]
    
    
    // * return the array of category struct
    // * a function that is called to get data from wherever! (Internet, Database)
    func getCategories() -> [Category] {
        return self.categoryDataSource
    }

} // end Class
