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
        Category(title: "Rolls Royce", imageName: "Rolls0"),
        Category(title: "Volvo", imageName: "Volvo"),
        Category(title: "BMW", imageName: "bmw5"),
        Category(title: "Audi", imageName: "a8"),
        ]
    
    
    private let bentleys = [
    
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "continental_0"),
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "continental_1"),
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "continental_2"),
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "flying_0"),
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "flying_1"),
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "flying_2"),
        Car(name: "Bentley Continental GT Speed 2020", price: "$100,000,000", imageName: "bentega_0")
    ]
    
    private let mercdeses = [
        Car(name: "Mercedes-Benz C400 2018", price: "$50,000", imageName: "c400")
    ]
    private let bmws = [Car]()
    private let porsches = [Car]()
    private let volvos = [Car]()
    private let rollses = [Car]()
    private let audies = [Car]()

    
    // * return the array of category struct
    // * a function that is called to get data from wherever! (Internet, Database)
    func getCategories() -> [Category] {
        return self.categoryDataSource
    }
    
    
    // * Takes the title of the pressed carBrand Table view cell
    // and according to it, it returns the appropriate data|array.
    func getCarsOfBrand(title: String) -> [Car] {
        switch title {
        case "Bentley":
            return self.bentleys
        case "Porsche":
            return self.porsches
        case "Mercedes":
            return self.mercdeses
        case "Rolls Royce":
            return self.rollses
        case "Volvo":
            return self.volvos
        case "BMW":
            return self.bmws
        case "Audi":
            return self.audies
        default:
            return self.bentleys
        }  // end switch
    } // end getCarsOfBrand
    
    
    
    

} // end Class
